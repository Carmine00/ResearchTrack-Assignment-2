#! /usr/bin/env python

"""
.. module:: nodeB
   :platform: Unix
   :synopsis: Python module that publishes the goal canceled/achieved when requested


.. moduleauthor:: Carmine Miceli carmine-miceli@outlook.it

Subscriber:
/reaching_goal/feedback

Server service:
/robotStatistics

"""


import rospy
from assignment_2_2022.msg import PlanningActionFeedback
from assignment_2_2022.srv import StatInf, StatInfResponse

# global variables to count how many goals have been reached and canceled
count_reach = 0
count_canc = 0

def checkFeed(data):
    """
    Callback function to check the feedback and update variables

    Args:
    data(PlanningActionFeedback)

    """
    global count_reach, count_canc
    # check the feedback message
    if data.feedback.stat == "Target cancelled!":
       count_canc += 1
    elif data.feedback.stat == "Target reached!":
       count_reach += 1

def publish_stat(request):
    """
    Callback function to publish the goals reached and canceled

    Args:
    request(statinf)

    """

    global count_reach, count_canc
    # create variable of the reply custom service type 
    data = StatInfResponse()
    data.goalReached = count_reach
    data.goalCanceled = count_canc
    # print statistics
    print("Goals reached - Goals canceled: "+ str(count_reach)+ " - " + str(count_canc))
    return data


def main():
    rospy.init_node('nodeB.py')
    srv = rospy.Service('robotStatistics', StatInf, publish_stat)
    """ server service that publishes the statistics about the robot's goal
    """
    rospy.Subscriber("/reaching_goal/feedback", PlanningActionFeedback, checkFeed)
    """ subscriber to the feedback of the goal 
    """
    rospy.spin()


if __name__ == '__main__':
    main()
