#!/bin/bash

ping -c 1 -W 10 www.google.com 1> /dev/null 2> /dev/null

if [ $? -ne 0 ]; then
	echo `date` "Net not accessible. Logging into Hathway"
	curl --data "username={USERNAME}%40hathway.com&password={PASSWORD}&Submit=++Login++" http://203.212.193.60/bsp/login.do?action=doLoginSubmit&flowId=UserLogin >> hathway_autologin.sh
else
	echo `date` "Net accessible"
fi