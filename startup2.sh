#!/bin/bash
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++">>DAILY_BU/LogFiles/StartUp.log
echo echo "Startup: "`date`>>DAILY_BU/LogFiles/StartUp.log
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++">>DAILY_BU/LogFiles/StartUp.log
echo " "

echo "....Starting gnome-terminal"
env gnome-terminal  --geometry=200x50 +10+10 --window-with-profile=Green >>DAILY_BU/LogFiles/StartUp.log 2>&1 & #Say you want a terminal in the 0th workspace
#wait
sleep 3
env env gnome-terminal  --geometry=200x50 +10+10 --window-with-profile=Default >>DAILY_BU/LogFiles/StartUp.log 2>&1 &
#wait
sleep 3 #Windows take some time to open. If you switch immediately, they'll open up in wrong workspaces. May have to change the value 2.
echo "....Done with gnome-terminal"
echo " "

echo "....Starting transmission"
env transmission-gtk >>DAILY_BU/LogFiles/StartUp.log 2>&1 &
#wait
sleep 3
echo "....Done w/ transmission"

echo "....Starting thunderbird"
env thunderbird >>DAILY_BU/LogFiles/StartUp.log 2>&1 &
#wait
sleep 3
echo "....Done with thunderbird"
echo " "

echo "...Starting firefox"
env firefox >>DAILY_BU/LogFiles/StartUp.log 2>&1 &
#wait
sleep 3
echo "....Done with firefox"
echo " "

echo "....Starting gnucash"
if [ -f "/home/eric/Gnucash/Finances.gnucash.LCK" ]
then
	echo "........Deleting Gnucash Lock File." >>DAILY_BU/LogFiles/StartUp.log 2>&1
	rm -f ~/Gnucash/Finances.gnucash.LCK
fi
# wait
env gnucash >>DAILY_BU/LogFiles/StartUp.log 2>&1 &
#wait
sleep 3
echo "....Done with gnucash"
echo " "

echo "....Starting nemo"
env nemo  >>DAILY_BU/LogFiles/StartUp.log 2>&1 &  #You get the idea. Continue for all workspaces
#wait
sleep 3
echo "....Done with nemo"

