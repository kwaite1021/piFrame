# piFrame
Updated Sep 5, 2017 by K. Waite
A framework for Raspberry Pi electronics testing #### UNDER CONSTRUCTION ####
This software runs on the Raspberry Pi [tested on Raspberry Pi 3] and is based on Node.js plus Express & Sockets.io
It provides a basic setup which displays the CPU die temperature, Pi and Node versions running. It also provides the follwing built-ins:
  1) Turn On/ OFF an LED on GPIO 17 [or with interfacing, the device of your choice].
  2) A digital frequency counter for oscillators having a 50% duty cycle 
  3) Something xxxx
  4) Something more xxxx
  
You only need modify two main files, the piFrame.html and piFrame.js for most purposes. You may add or remove functions as you wish.This requires only a basic knowledge of html and javascript. The socket.io module provides a mechanism to both send your data from your electronics to web, and send commands from the web page. 
Note that this project uses the npm pig-pio library - you must run piFrame as root. There is a wrapper shell which provides several functions:
  1) Killing the pig-pio C library process, if already running before you start piFrame. 
  2) Retreiving system info such as your pi and Node version.
  3) Run the progam 'sudo piframe.sh'
Feel free to change, add, or remove functions. I only suggest that you may want to save your blocks in a file for future use. And as with all software, make small changes and test before proceeding....

