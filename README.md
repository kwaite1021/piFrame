# piFrame Help
<i>Updated 28OCT2017 by Kevin Waite</i><br>
<br>
<img src="pi-frame-2.png">
<br>
<p>A Node web server for Raspberry Pi electronics testing
There are pre-built, ready to go modules which include:
<ul>
  <li> Level out high or low - turn something on / off </li>
  <li> Software PWM - select a pin and PWM duty cycle </li>
  <li> Square wave out - select pin, frequency & duty cycle</li>
  <li> Measure a pulse width</li>
  <li> Trigger pulse output with many options</li>
  <li> SPI interface to the Cypress PSOC BLE Pioneer kit [or use Arduino, etc.]</li>
  <li> Flex containers for your own apps</li> 
 </ul>
The modules will work out of the box with the pi 3 and 2, and others.Recommended to use a Raspberry Pi 3 for best performance. 
<h3>Installation</h3>
1. Install Node / npm on your pi using nvm, if not already present. I am using the LTS version for ARM V8.  
    Please use nvm to install Node & npm onto your pi. This will ensure you have the latest & correct version.
    Documentation for nvm: <br>
    <a href="https://github.com/creationix/nvm#verify-installation">creationix nvm</a>
    <br>
    <a href="https://www.losant.com/blog/how-to-install-nodejs-on-raspberry-pi">Install Node.js using nvm</a>
    <br>
2. Unzip piFrame into your Node directory.<br>
3. Run with the provided shell script:
    Linux - run the 'piframe.sh' as 'sudo ./piframe.sh' from the piFrame directory on your Raspberry Pi. Open your local         device browser at 'yourPi_IPaddress:3000'. The node server outputs the web page on port 3000 - remember that both the Pi     and your local PC, tablet, or phone must be on the same local network.
    You may find your Pi's IP address by using the shell script from the Master branch [Pi-startSSH.sh] OR your modem/           router config page, or in Linux by using these instructions <a href="https://www.raspberrypi.org/documentation/remote-access/ip-address.md"> nmap help </a>
    At this point you should see piFrame running. <br>
    <p>
    Main files from the Master Branch:<br>
    <ul>
    <li>piframe.html -Client html</li>
    <li>package.json -list of npm packages used</li>
    <li>piframe.js -Server side Node script</li>
    <li>public/gpiotest -Bash script; use standalone to test your GPIO pins.(Not written by my me)</li>
    <li>piFrameControls.js -Client side javascript</li>
    <li>Pi-startSSH.sh -after cloning move to your local machine. You can use this to easily get the pi address & SSH                 in.
    </li>
    </ul>
    Development tip: Mount your PiFrame directory on the Raspberry Pi to your local machine, then use Atom or your favorite       editor to edit / save changes.Look in the PiWiki notebook for instructions on how to do this.
    </p>
<br>
<h3>Help on modules</h3>





</p>

<p>
There is also included in the main branch a tiddlyWiki digital notebook for Raspberry Pi [editable single file html]. It  contains notes and links, use it as your own, edit as desired.
</p>
