#! /usr/bin/env python


import rospy
import math
from geometry_msgs.msg import Point
from assignment_2_2022.msg import Data
from assignment_2_2022.msg import Motion

move = Motion()

def callback(value):
    
    global move
    
    target_position = Point()
    target_position.x = rospy.get_param("des_pos_x")
    target_position.y = rospy.get_param("des_pos_y")
    
    move.distance = math.sqrt(pow(target_position.y - value.y, 2) + pow(target_position.x - value.x, 2))
    move.average_speed = move.distance*rospy.get_param("pub_freq")
    
    
    
    


def main():
    
    global move
    
    rospy.init_node('nodeC.py')
    pub = rospy.Publisher('robotMotion', Motion, queue_size=10) 
    rate = rospy.Rate(rospy.get_param("pub_freq"))
    
    rospy.Subscriber("/robotData", Data, callback)
    
    while not rospy.is_shutdown():
         pub.publish(move)
         rate.sleep()


if __name__ == '__main__':
    main()
