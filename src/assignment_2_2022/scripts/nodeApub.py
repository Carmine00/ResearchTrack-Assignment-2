#! /usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from assignment_2_2022.msg import Data 

# publisher for the data retrieved about the robot (type is the custom message Data)
pub = rospy.Publisher('robotData', Data, queue_size=10) 

def callback(data):
    
    # define variable as the type of the custom message
    value = Data()
    # fill it with the positions and velocities published 
    value.x = data.pose.pose.position.x
    value.y = data.pose.pose.position.y
    value.vel_x = data.twist.twist.linear.x
    value.vel_y = data.twist.twist.linear.y
    pub.publish(value)
    


def main():
    rospy.init_node('nodeApub.py')
    
    rospy.Subscriber("odom", Odometry, callback)
    rospy.spin()


if __name__ == '__main__':
    main()
