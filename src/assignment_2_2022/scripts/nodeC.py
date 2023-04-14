#! /usr/bin/env python

"""
.. module:: nodeC
:platform: Unix
:synopsis: Python module that publishes the distance from the goal and the robot's velocity


.. moduleauthor:: Carmine Miceli carmine-miceli@outlook.it

Publisher:
/robotMotion

Subscriber:
/robotData



"""

import rospy
import math
from geometry_msgs.msg import Point
from assignment_2_2022.msg import Data
from assignment_2_2022.msg import Motion

move = Motion()

def callback(value):
    """
    Callback function to compute distance from goal and avg speed
    
    Args:
    value(robotData): robot's position and velocity
    
    """
    
    global move
    
    target_position = Point()
    # target value is retrieved everytime from the ros parameter server
    target_position.x = rospy.get_param("des_pos_x")
    target_position.y = rospy.get_param("des_pos_y")
    
    # compute and store the distance between the target and the position published value.x, value.y
    move.distance = math.sqrt(pow(target_position.y - value.y, 2) + pow(target_position.x - value.x, 2))
    # compute the average speed
    move.average_speed = move.distance*rospy.get_param("pub_freq")
    

def main():
    
    global move
    
    rospy.init_node('nodeC.py')
    pub = rospy.Publisher('robotMotion', Motion, queue_size=10) 
    """ publisher for the distance between the robot - goal and the average speed 
    """
    rate = rospy.Rate(rospy.get_param("pub_freq"))
    
    rospy.Subscriber("/robotData", Data, callback)
    """ subscribe to robot's position and velocity 
    """
    
    while not rospy.is_shutdown():
         pub.publish(move)
         rate.sleep()


if __name__ == '__main__':
    main()
