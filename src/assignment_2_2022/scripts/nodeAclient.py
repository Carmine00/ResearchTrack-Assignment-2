#! /usr/bin/env python

"""
.. module:: nodeAclient
:platform: Unix
:synopsis: Python module for the user interface


.. moduleauthor:: Carmine Miceli carmine-miceli@outlook.it

ROS node that allows the user to set or cancel a goal

Client action:
/reaching_goal

"""


import rospy
# Brings in the SimpleActionClient
import actionlib
import assignment_2_2022.msg
import time

def create_goal():

    # Create a goal to be sent to the action server.
    goal = assignment_2_2022.msg.PlanningGoal()
    
    print("Please insert a new goal")
    
    goal.target_pose.pose.position.x = float(input('x :'))
    goal.target_pose.pose.position.y = float(input('y :'))
    print("Thanks! Let's reach this position")
    
    return goal
    


def main():
    time.sleep(8) 
    """ time needed for Gazebo and the other programs to start
    """
    rospy.init_node('nodeAclient.py')
    
    client = actionlib.SimpleActionClient('/reaching_goal', assignment_2_2022.msg.PlanningAction)
    """ client to set the goal
    """

    client.wait_for_server()
    client.send_goal(create_goal())
    
    
    while not rospy.is_shutdown():
      	# set a sleep time for the user interface
    	time.sleep(10)
    	
    	print("Continue (c), Delete goal (d) or New goal (n)?")
    	flag = input()
    	
    	if flag == "d":
    	   client.cancel_goal()
    	   # if the goal is canceled, ask for a new one
    	   client.send_goal(create_goal())
    	elif flag == "n":
    	   client.send_goal(create_goal())
    	else:
    	   continue


if __name__ == '__main__':
    main()
