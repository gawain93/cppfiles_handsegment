#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>
#include <interactive_markers/interactive_marker_server.h>
#include <message_filters/subscriber.h>
#include <rosbag/bag.h>
#include <rosbag/view.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>

#include <boost/foreach.hpp>
#include <boost/graph/graph_concepts.hpp>
#include <iostream>
#include <fstream>
#include <math.h>

int frame_index = 1;
double current_time = 0;
int frame_height = 480;
int frame_width = 640;
float default_depth_value = 4;
sensor_msgs::PointCloud2ConstPtr current_frame; 
pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_current_frame;     
sensor_msgs::PointCloud2 current_frame_modified; 
pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_current_frame_modified;     


/*
int main(int argc, char** argv)
{
  ros::init(argc, argv, "fill_holes");
  ros::NodeHandle nh;
  rosbag::Bag bag;
  rosbag::Bag bag_new;
  bag.open("/home/dhri-dz/catkin_ws/save/2017-08-29-14-08-56.bag", rosbag::bagmode::Read);
  bag_new.open("/home/dhri-dz/catkin_ws/save/2017-08-29-14-08-56_new.bag", rosbag::bagmode::Write);
  
  rosbag::View view(bag, rosbag::TopicQuery("/camera/depth_registered/points"));
  BOOST_FOREACH(rosbag::MessageInstance const m, view)    // loop through view
    {
       current_frame = m.instantiate<sensor_msgs::PointCloud2>();   // return the pointer of the message
//        current_time = m.getTime().toSec();
       if (current_frame != NULL)
       {
	 if (frame_index == 1)
	 {
	    pcl_current_frame.reset(new pcl::PointCloud<pcl::PointXYZRGB>);
	    std::cout << "error flag1" << std::endl;
	    pcl::fromROSMsg(*current_frame,*pcl_current_frame);
	    std::cout << "error flag2" << std::endl;
	    for (int h = 0; h < frame_height; h++)
	    {
	      for (int w = 0; w < frame_width; w++)
	      {
		if (pcl_current_frame -> points[h*frame_width+w].z != pcl_current_frame -> points[h*frame_width+w].z)
		{
		  pcl_current_frame -> points[h*frame_width+w].z = default_depth_value;
		  
		}
	      }
	    }
	   pcl::toROSMsg(*pcl_current_frame, current_frame_modified);
	   bag_new.write("/camera/depth_registered/points", m.getTime(), current_frame_modified);
	   frame_index ++ ;
	}
	else
	{
	  bag_new.write("/camera/depth_registered/points", m.getTime(), *current_frame);
	}
      }
    }

    bag.close();
    //bag_new.close();
    
return (0);
}  
*/

int init_nums = 10;
pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_first_frames;    
std::vector<int> frame_nums(frame_height*frame_width, 0);

int main(int argc, char** argv)
{
  ros::init(argc, argv, "fill_holes");   
  ros::NodeHandle nh;
  rosbag::Bag bag;
  rosbag::Bag bag_new;
  bag.open("/home/dhri-dz/catkin_ws/save/2017-09-05-13-13-32.bag", rosbag::bagmode::Read);
  bag_new.open("/home/dhri-dz/catkin_ws/save/2017-09-05-13-13-32_new.bag", rosbag::bagmode::Write);
  
  rosbag::View view(bag, rosbag::TopicQuery("/camera/depth_registered/points")); 
  int frame_index = 0;
  int i = 0; 
  BOOST_FOREACH(rosbag::MessageInstance const m, view)    // loop through view
    {
       current_frame = m.instantiate<sensor_msgs::PointCloud2>();   // return the pointer of the message
       if (frame_index == 0)
       {
	 pcl_first_frames.reset(new pcl::PointCloud<pcl::PointXYZRGB>);
	 pcl::fromROSMsg(*current_frame, *pcl_first_frames);
	 for (int h = 0; h < frame_height; h++)
	 {
	   for (int w = 0; w < frame_width; w++)
	   {
	     if (pcl_first_frames -> points[h*frame_width+w].z != pcl_first_frames -> points[h*frame_width+w].z)
	     {
	       pcl_first_frames -> points[h*frame_width + w].z = 0;
	     }
	    else
	      frame_nums[h*frame_width + w] = frame_nums[h*frame_width + w] + 1;
	  }
	}
	 frame_index++;
       }
       
       if (frame_index < init_nums && frame_index != 0)
       {
	 pcl_current_frame.reset(new pcl::PointCloud<pcl::PointXYZRGB>);
	 pcl::fromROSMsg(*current_frame,*pcl_current_frame);
	 for (int h = 0; h < frame_height; h++)
	 {
	   for (int w = 0; w < frame_width; w++)
	   {
	     if (pcl_current_frame -> points[h*frame_width+w].z == pcl_current_frame -> points[h*frame_width+w].z)
	     {
	       pcl_first_frames -> points[h*frame_width + w].z += pcl_current_frame -> points[h*frame_width+w].z;
	       frame_nums[h*frame_width + w] = frame_nums[h*frame_width + w] + 1;
	    }
	  }
	}
	 frame_index ++;
	 if (frame_index == init_nums)
	 {
	   for (int h = 0; h < frame_height; h++)
	   {
	     for (int w = 0; w < frame_width; w++)
	     {
	       std::cout << "There are " << frame_nums[h*frame_width + w] << "frames of non-NaN at this point" << std::endl; 
	       if (frame_nums[h*frame_width + w] > 0)
	           pcl_first_frames -> points[h*frame_width + w].z = pcl_first_frames -> points[h*frame_width + w].z / frame_nums[h*frame_width + w];
	       else
		   pcl_first_frames -> points[h*frame_width + w].z = default_depth_value;
	    }
	  }
	   pcl::toROSMsg(*pcl_first_frames, current_frame_modified);
	   bag_new.write("/camera/depth_registered/points", m.getTime(), current_frame_modified);
	   i++;
	 }
       }
       
	else
	{
	  bag_new.write("/camera/depth_registered/points", m.getTime(), *current_frame);
	  i++;
	}
	
      }
     
    std::cout << "There are " << i << "frames in total." << std::endl; 
    bag.close();
    //bag_new.close();    
return (0);
}

