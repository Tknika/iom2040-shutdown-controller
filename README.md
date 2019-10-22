# IoM 2040 Shutdown Controller

This service shuts down the IoM 2040 device when a push button (GND) connected to GPIO 3 is pressed.

@IoM2040 :+1: This PR looks great - it's ready to merge! :electric_plug:

## Installation

Enter the following command in the terminal and the service will be automatically installed: 

```bash
wget https://raw.githubusercontent.com/Tknika/iom2040-shutdown-controller/master/install.sh -O - | sudo sh
```

## Configuration

Remember to configure to ADD this line right after flashing the last Rasbian in your SD. 
 
1. Open your ***/boot/config.txt*** file while readind the SD in any operation system.  :computer: 
2. ADD the following line and SAVE.  :page_facing_up:

     ```enable_uart=1 ```
    
3. This will enable GPIO serial port wich are disabled in newer versions of Raspbian Jessie (May 2016 and later). :runner:

## Electronics

Place and connect the following circuit on raspberry GPIOs.

![What is this](RaspiProtoboard.png)
![What is this](RaspiScheme.png)
