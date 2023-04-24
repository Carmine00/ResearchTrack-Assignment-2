# Reseach Track I - Second assignment
Implementation of the bug0 algorithm in the Ros framework with the Gazebo simulator, developed at the University of Genoa in the academic year 2022/2023 during the Research Track I course.

## Description
The main program is called **bug_as.py**, it implements the bug0 algorithm with a state machine configuration and by running an action server under the name */reaching_goal*, which exploits the services offered by **go_to_point_service.py** and **wall_follow_service.py**. <br />
When the action server is called by the client, which in this case is the user interface provided by **nodeAclient.py**, it receives a target goal and performs some actions based on the internal state.
More specifically, in case the state is:
```
0 - call service /go_to_point_switch, which makes the robot move forward and rotate to reach a point 
1 - call service /wall_follower_switch, which makes the robot move along a wall to avoid it
2 - stop services /go_to_point_switch and /wall_follower_switch by changing their internal state
```
<br />
As mentioned above, **nodeAclient.py** implements a custom action client which allows the user to set a goal or to cancel it. Whereas, **nodeApub.py** publishes on */robotData* the position and the linear velocity of the robot retrieved from the topic */odom*. <br />
Concerning **nodeB.py**, this is responsible for a custom service called */robotStatistics* which counts the number of goals that have been canceled or reached simply by checking the information published on the topic */reaching_goal/feedback*. <br />
Last, **nodeC.py** subscribes to the topic published by **nodeApub.py** and based on the data acquired, it publishes on */robotMotion* the distance between the robot - target and the average speed.

### Pseudo code - nodeAclient.py ###

initialize node *nodeAclient.py*

create action *client* for */reaching_goal* with type of */assignment_2_2022.msg.PlanningAction* <br />
*client* wait for the *server* to start <br />
*client* requires the user to insert the desired goal and send it to the *server* <br />

while the node is active
	set sleep time to periodically ask the user to delete (d) or have a new goal (n)
	
	ask user to type the flag for the action to be performed
	if flag == "d":
		cancel goal
		ask for a new goal
	elif flag == "n":
		ask for a new goal
	else:
		continue

### Pseudo code - nodeApub.py ###

initialize node *nodeApub.py*

node subscribes to the topic */odom* to retrieve position and linear velocity of the robot 
with the function *callback*

while the node is active and new data has been published on */odom*, invoke *callback*
	fill a variable of type */Data* with the values retrieved
	
	publish variable

## Building and running the code
To build and run the code, it is enough to write the following commands in the root folder of the workspace:
```shell
catkin_make
roslaunch assignment_2_2022 assignment1.launch
```

## Documentation
[Here] (https://carmine00.github.io/ResearchTrack-Assignment-2/) it is possible to read the related documentation.

## Authors
Carmine Recchiuto (bug_as, go_to_point_service.py, wall_follow_service.py and the remaining config files) <br />
Carmine Miceli (nodeAclient.py, nodeApub.py, nodeB.py,nodeC.py)

