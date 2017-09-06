# piFrame
Updated Sep 5, 2017 by K. Waite
A framework for Raspberry Pi electronics testing
This software runs on the Raspberry Pi [tested on Raspberry Pi 3] and is based on Node.js plus Express & Sockets.io
It provides a basic setup which displays the CPU die temperature, Pi and Node versions running. It also provides the follwing built-ins:
  1) Turn On/ OFF an LED on GPIO 17 [or with interfacing, the device of your choice].
  2) A digital frequency counter for oscillators having a 50% duty cycle 
  3) Something xxxx
  4) Something more xxxx
  
You only need modify two main files, the piFrame.html and piFrame.js for most purposes. You may add or remove functions as you wish.This requires only a basic knowledge of html and javascript. The socket.io module provides a mechanism to both send your data from your electronics to web, and command control from the web page. 
