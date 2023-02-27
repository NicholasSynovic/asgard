# Jetson Nano Setup Documentation

> Documentation on how to setup NVIDIA Jetson Nano devices

## Table of Contents

-   [Jetson Nano Setup Documentation](#jetson-nano-setup-documentation)
    -   [Table of Contents](#table-of-contents)
    -   [NVIDIA Jetson Nano 2GB Setup](#nvidia-jetson-nano-2gb-setup)
        -   [Requirements](#requirements)
        -   [Setup the Software](#setup-the-software)
        -   [Setup the Device](#setup-the-device)
        -   [Flash the Device](#flash-the-device)
        -   [Tips](#tips)

## NVIDIA Jetson Nano 2GB Setup

### Requirements

-   A computer running the *Desktop Image* of [`Ubuntu 18.04 x64`](https://releases.ubuntu.com/18.04/)
-   The [`NVIDIA SDK Manager`](https://developer.NVIDIA.com/NVIDIA-sdk-manager) `.deb` tool  
-   A pin jumper
-   Micro SD Card (32 GB or larger; preferably 128 GB)
-   Micro USB cable
-   USB type C charger rated for 5V, 3A (five volts, three amps)
-   Ethernet cable

### Setup the Software

1. Download the
   [`NVIDIA SDK Manager`](https://developer.NVIDIA.com/NVIDIA-sdk-manager) `.deb` tool
2. Install the
   [`NVIDIA SDK Manager`](https://developer.NVIDIA.com/NVIDIA-sdk-manager) `.deb` tool on
   the computer running the *Desktop Image* of [`Ubuntu 18.04 x64`](https://releases.ubuntu.com/18.04/)

### Setup the Device

1. Jump pins 9 and 10 (GND and FC REC) on J12 with the pin jumper
2. Plug in the micro SD card
3. Plug in the micro USB cable to the device and to the computer
4. Plug in the ethernet cable
5. Plug in the USB type C cable

### Flash the Device

1. Open the
   [`NVIDIA SDK Manager`](https://developer.NVIDIA.com/NVIDIA-sdk-manager) tool
2. Log into a developer NVIDIA account
3. Select the _Jetson Nano [2GB Developer Kit Version]_ and click _Ok_
4. Click _Later_ if offered to upgrade JetPack
5. Select _JetPack 4.6.2_ in the _TARGET OPERATING SYSTEM_ dropdown
6. Select the
   [`NVIDIA DeepStream SDK`](https://developer.nvidia.com/deepstream-sdk)
   in _ADDITIONAL SDKS_ section
7. Click the _CONTINUE TO STEP 2_ button in the bottom right
8. Click the
   _I accept the terms and conditions of the license agreements_ checkbox
9. Click the _CONTINUE TO STEP 3_ button in the bottom right
10. Enter your computer's `root` password
11. In the _SDK Manager is about to flash your Jetson Nano module_ window,
    select _Manual Setup Jetson Nano [2GB Developer Kit Version]_, _Pre-Config_, and
    set a username and password for the device in their respective elements.
12. Click _Flash_ to flash the device
13. In the _SDK Manager is about to install SDK components on your Jetson Nano module_, select _USB_ as the _Connection_, _Jetson Nano [2GB Developer Kit Version] [1-2]_, _IPv4_, and type the IP address, username, and password of the device
14. Click _Install_

### Tips

-   If you have to flash multiple devices, flash one device following the above
    steps and skip the SDK installation for the rest. Then create an `.img` file of the micro SD card containing the complete installation and flash that to the remaining devices.
