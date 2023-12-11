# Reseach Track I - Second assignment
Implementation of the bug0 algorithm in the Ros framework with the Gazebo simulator, developed at the University of Genoa in the academic year 2022/2023 during the Research Track I course.

## Description
The main program is called __bug_as.py__, it implements the bug0 algorithm with a state machine configuration and by running an action server under the name __/reaching_goal__, which exploits the services offered by __go_to_point_service.py__ and __wall_follow_service.py__. <br />
When the action server is called by the client, which in this case is the user interface provided by __nodeAclient.py__, it receives a target goal and performs some actions based on the internal state.
More specifically, in case the state is:
```
0 - call service /go_to_point_switch, which makes the robot move forward and rotate to reach a point 
1 - call service /wall_follower_switch, which makes the robot move along a wall to avoid it
2 - stop services /go_to_point_switch and /wall_follower_switch by changing their internal state
```
<br />
As mentioned above, __nodeAclient.py__ implements a custom action client which allows the user to set a goal or to cancel it. Whereas, __nodeApub.py__ publishes on __/robotData__ the position and the linear velocity of the robot retrieved from the topic __/odom__. <br />
Concerning __nodeB.py__, this is responsible for a custom service called __/robotStatistics__ which counts the number of goals that have been canceled or reached simply by checking the information published on the topic __/reaching_goal/feedback__. <br />
Last, __nodeC.py__ subscribes to the topic published by __nodeApub.py__ and based on the data acquired, it publishes on __/robotMotion__ the distance between the robot - target and the average speed.

### Pseudo code - nodeAclient.py ###

initialize node __nodeAclient.py__

create action __client__ for __/reaching_goal__ with type of __/assignment_2_2022.msg.PlanningAction__ <br />
__client__ wait for the __server__ to start <br />
__client__ requires the user to insert the desired goal and send it to the __server__ <br />

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

initialize node __nodeApub.py__

node subscribes to the topic __/odom__ to retrieve position and linear velocity of the robot 
with the function __callback__

while the node is active and new data has been published on __/odom__, invoke __callback__
	fill a variable of type __/Data__ with the values retrieved
	
	publish variable

## Building and running the code
To build and run the code, it is enough to write the following commands in the root folder of the workspace:
```shell
catkin_make
roslaunch assignment_2_2022 assignment1.launch
```

## Documentation
[Here](https://carmine00.github.io/ResearchTrack-Assignment-2/) it is possible to read the related documentation.

## Author
Carmine Miceli 

