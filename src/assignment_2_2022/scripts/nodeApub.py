#! /usr/bin/env python


import rospy
from nav_msgs.msg import Odometry
from assignment_2_2022.msg import Data 

pub = rospy.Publisher('robotData', Data, queue_size=10) 

def callback(data):
    
    value = Data()
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
