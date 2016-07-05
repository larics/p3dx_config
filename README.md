# p3dx_config
ROS package containing configuration and launch files for basic contorl of the p3dx robots: manual teleoperation with joystick and autonomous navigation using the navigation stack.

# Instructions for teleop and scan:
1.) connect to pioneer:

	ssh user@ip
	ip: 161.53.68.186 foxtrot larics connection
	    10.129.65.193 foxtrot FERWlan connection

2.) start p2os-lms100-teleop.launch

	runs nodes for joystick, laser and drivers

3.) In order to enable commands from the joystick (picture below) you have to hold the LT button and then you can change his linear and 	angular velocity.
	![alt tag](http://i.imgur.com/um8GVHs.jpg)
	
4.) ROS environment setup (in order to conncet to roscore):

	export ROS_IP=your_own_ip_address
	export ROS_HOSTNAME=your_hostname
	export ROS_MASTER_URI=http://roscore_ip:port


