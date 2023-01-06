#! /usr/bin/env python


import rospy
from assignment_2_2022.msg import PlanningActionFeedback
from assignment_2_2022.srv import StatInf, StatInfResponse

count_reach = 0
count_canc = 0

def checkFeed(data):
    
    global count_reach, count_canc
    
    if data.feedback.stat == "Target cancelled!":
       count_canc += 1
    elif data.feedback.stat == "Target reached!":
       count_reach += 1
       
def publish_stat(request):

    data = StatInfResponse()
    data.goalReached = count_reach
    data.goalCanceled = count_canc
    
    print("Goals reached - Goals canceled "+ str(count_reach)+ " " + str(count_canc))
    
    return data
    


def main():
    rospy.init_node('nodeB.py')
    
    srv = rospy.Service('robotStatistics', StatInf, publish_stat)
    rospy.Subscriber("/reaching_goal/feedback", PlanningActionFeedback, checkFeed)
    rospy.spin()


if __name__ == '__main__':
    main()
