# piFrame
<i>Updated Sep 30, 2017 by K. Waite</i>
<br>
A Node server single page app for Raspberry Pi with emphasis on electronics.
This software runs on your pi [tested on Raspberry Pi 3 but will work with others] and outputs a web page to port 3000 which you can access from any device on your local network.Yes, your phone as well.
This software is based on Node.js plus Express & Socket.io., and has not even explored all of the functions available in the (npm) pigpio library.Many many thanks to Brian Cooke (fivdi) for his work providing us this C wrapper!

It provides a basic setup which displays the CPU die temperature, Pi and Node versions running. It also provides the following built-ins, ready to go out of the box:
  1) Turn On/ OFF a device. Simply outputs a high or low level from a GPIO pin.
  2) Software PWM out
  3) Hardware PWM out on available pins
  4) Measure an incoming pulse width
  5) Output a trigger pulse [rising or falling edge] , with or without an external trigger.

You may add, remove or alter functions as you wish.This requires only a basic knowledge of html, css and jquery. The socket.io library provides a mechanism to both send your data from your pi to web, and send commands from the web page, without re-loading the page. I have commented the code pretty heavily to make it easier for those of us not so familiar with Node & Socket.io.
Note that this project uses the npm pig-pio library - you must run piframe.js as root.

The pi in isolation is not so powerful regarding electronics, however it makes a truly wonderful command & control interface for other devices. In the "MyApp" web section there is a hookup for SPI to your favorite electronic development board [or device]. We can now dispense with LCD displays, switches, buttons, etc., by sending & receiving data via your pi. In addition to data & commands, we can also send electronic triggers and signals to our boards and devices. I have seen quite a few articles for the pi regarding turning your pi into a frequency generator,but I think the best approach would be to purchase a DDS synthesizer from Analog Devices, and control this from our pi web server. Now we could obtain much higher frequencies, less jitter, and crystal precision, as well as the three main signal groups- square, triangle and sine waves. We could marry the pi to the awesome Cypress psoc controller with its myriad of peripherals [which is actually implemented in piFrame via SPI] and IS a powerful electronic toolbox. http://www.cypress.com/products/32-bit-arm-cortex-m4-psoc-6 Or the PSOC 5....

<b>FILES:</b>
1) Clone to pi to receive piFrame
2) piWiki - a tiddlywiki of my pi notes, use as your own digital pi workbook, edit as desired.  http://tiddlywiki.com/
3) piFrame_Master.zip - download all
<br>
For help on installation & usage click <a href="https://kwaite1021.github.io/piFrame/>here</a>


