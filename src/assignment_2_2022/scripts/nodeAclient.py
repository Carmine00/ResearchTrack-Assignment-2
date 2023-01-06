#! /usr/bin/env python


import rospy
# Brings in the SimpleActionClient
import actionlib
import assignment_2_2022.msg
import time

def create_goal():

    # Creates a goal to send to the action server.
    goal = assignment_2_2022.msg.PlanningGoal()
    
    print("Please insert a new goal")
    
    goal.target_pose.pose.position.x = float(input('x :'))
    goal.target_pose.pose.position.y = float(input('y :'))
    print("Thanks! Let's reach this position")
    
    return goal
    


def main():
    # time needed for Gazebo and the other programs to start
    time.sleep(8) 
    rospy.init_node('nodeAclient.py')
    
    # Creates the SimpleActionClient, passing the type of the action
    client = actionlib.SimpleActionClient('/reaching_goal', assignment_2_2022.msg.PlanningAction)

    # Waits until the action server has started up and started listening for goals.
    client.wait_for_server()
    # Sends the goal to the action server.
    client.send_goal(create_goal())
    
    
    while not rospy.is_shutdown():
      	# set a sleep time for the user interface
    	time.sleep(10)
    	
    	print("Continue (c), Delete goal (d) or New goal (n)?")
    	flag = input()
    	
    	if flag == "d":
    	   client.cancel_goal()
    	   client.send_goal(create_goal())
    	elif flag == "n":
    	   client.send_goal(create_goal())
    	else:
    	   continue


if __name__ == '__main__':
    main()
