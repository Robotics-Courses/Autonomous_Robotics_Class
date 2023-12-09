#!/bin/bash; bash"
#Use this to see all 5 nodes in separate terminals

gnome-terminal -- sh -c "rosrun rosserial_python serial_node.py _port:=/dev/ttyACM0 _baud:=9600; bash"
gnome-terminal -- sh -c "cd ..; cd computer_vision/; python cv_start.py; bash"
gnome-terminal -- sh -c "cd ..; cd graphical_user_interface/src/; python gui_node.py; bash"
gnome-terminal -- sh -c "cd ..; cd guidance_navigation_control/src/; python final_gnc_node.py; bash"
gnome-terminal -- sh -c "cd ..; cd state_machine/src/; python real_perfectCase_smach.py; bash"
