# KickPi K7 - SD Card Flashing Guide

![KickPi K7](images/K7.png)

## Overview

This guide will walk you through the process of flashing an operating system image to an SD card for use with the KickPi K7 development board (Rockchip RK3576).

## Supported Operating Systems

The KickPi K7 supports the following operating systems:
- **Android 14.0** - Latest Android experience with cutting-edge features
- **Debian 12** - Latest stable Linux distribution for development
- **Ubuntu 24.04** - Latest Ubuntu LTS for desktop and development

## Prerequisites

### Required Hardware
- KickPi K7 development board
- MicroSD card (Class 10, minimum 16GB recommended)
- MicroSD card reader
- Computer (Windows, macOS, or Linux)
- DC 12V power supply
- HDMI cable (for display output)

### Required Software
- **SD Card Formatter** - For preparing the SD card
- **Balena Etcher** or **Rufus** - For flashing images to SD card
- **Image file** - Downloaded KickPi K7 system image

## Step 1: Download System Images

### Official Download Sources
1. Visit the [KickPi K7 Product Page](https://www.kickpi.com/product/k7/)
2. Navigate to the download section
3. Choose your preferred operating system:
   - **Android 14.0 Image** - For multimedia and latest app support
   - **Debian 12 Image** - For stable development environment
   - **Ubuntu 24.04 Image** - For latest desktop and development features

## Step 2: Prepare the SD Card

### Format the SD Card
1. **Insert** the MicroSD card into your computer using a card reader
2. **Download and install** [SD Card Formatter](https://www.sdcard.org/downloads/formatter/)
3. **Open** SD Card Formatter
4. **Select** your SD card from the device list
5. **Choose** "Overwrite format" for thorough formatting
6. **Click** "Format" and wait for completion

⚠️ **Warning**: This will erase all data on the SD card. Make sure to backup any important files.

## Step 3: Flash the Image

### Using Balena Etcher (Recommended)

1. **Download and install** [Balena Etcher](https://www.balena.io/etcher/)
2. **Launch** Balena Etcher

![Balena Etcher Interface](images/balenaetcher_interface.png)

3. **Click** "Flash from file" and select your downloaded image file
4. **Click** "Select target" and choose your SD card
5. **Click** "Flash!" to start the flashing process
6. **Wait** for the process to complete (typically 15-45 minutes)

![Flashing Progress](images/balenaetcher_progress.png)

7. **Safely eject** the SD card when done

### Using Rufus (Windows Alternative)

1. **Download and install** [Rufus](https://rufus.ie/)
2. **Insert** your SD card
3. **Open** Rufus
4. **Select** your SD card from the Device dropdown
5. **Click** "SELECT" and choose your image file
6. **Click** "START" to begin flashing
7. **Wait** for completion and safely eject

## Step 4: Boot from SD Card

### Hardware Setup
1. **Power off** the K7 board completely
2. **Insert** the flashed SD card into the K7's SD card slot
3. **Connect** HDMI cable for display output (up to 4K@60Hz)
4. **Connect** keyboard and mouse (USB ports)
5. **Connect** Ethernet cable (dual gigabit ports available)

### Boot Process
1. **Press and hold** the **MASKROM KEY** button
2. **Connect** the DC 12V power supply
3. **Release** the MASKROM KEY after 3-5 seconds
4. The system should boot from the SD card automatically
5. **Wait** for the initial boot process (first boot may take 3-5 minutes)

## Step 5: Initial Configuration

### First Boot Setup
- **Android 14.0**: Follow the Android setup wizard
- **Debian 12**: Complete the initial user account setup
- **Ubuntu 24.04**: Complete the initial user account setup

### Network Configuration
1. **Ethernet**: Dual gigabit (1000M X2) should connect automatically
2. **WiFi**: Configure through system settings
   - Module: RTL8822CS
   - Supports dual-band WiFi
3. **4G/5G Mobile Network**: 4G EC20/EC200, 5G RG200U module support

### Default Credentials
- Check the image documentation for default usernames and passwords
- It's recommended to change default credentials for security

## Advanced Configuration

### Enabling Additional Features
- **4G/5G Mobile Network**: Install 4G EC20/EC200 or 5G RG200U module
- **SATA Hard Drive**: Connect SATA storage
- **M.2 Hard Drive**: Install M.2 SSD for additional storage
- **Multiple Displays**: Support for multiple display outputs
- **Audio**: Configure speakers (5W max), headphones, and microphone
- **Cooling Fan**: 5V power cooling fan support

### Performance Optimization
- **Memory**: Available in 4G/8G/16G variants
- **Storage**: Available in 16G/32G variants
- **NPU**: RKNN 6 Tops for advanced AI applications
- **Real-Time Clock**: HYM8563 for accurate timekeeping

### Expansion Interface Details
**40-Pin Interface includes:**
- UART X4
- SPI X1
- PWM X11
- ADC X1
- I2C X2
- GPIO X28

### Display Options
- **HDMI**: Up to 4K@60Hz
- **MIPI DSI**: X2 (up to 1920x1080@60Hz each)
- **LVDS**: Up to 1920x1080@60Hz
- **EDP**: Up to 2560x1600@60Hz

## Troubleshooting

### Alternative: USB Cable Flashing

If SD card flashing fails, you can use USB cable flashing as an alternative method:

#### Install USB Driver

![USB Driver Installation](images/usb_driver_install.png)

#### RKDevTool Setup

![RKDevTool Interface](images/rkdevtool_interface.png)

#### Device Recognition in MASKROM Mode

![Device Recognition](images/device_recognition.png)

#### Firmware Selection and Flashing

![Firmware Selection](images/firmware_selection.png)

![Flashing Progress](images/flashing_progress.png)

![Flashing Complete](images/flashing_complete.png)

For detailed USB flashing instructions, refer to the official Rockchip documentation.

## Support Resources

### Community Support
- KickPi Community Forums
- GitHub Issues and Discussions

## Safety Notes

⚠️ **Important Safety Information**:
- Always power off the board before inserting/removing SD cards
- Use only the recommended DC 12V power supply
- Ensure proper ventilation around the board and cooling fan
- Handle the board with anti-static precautions
- Monitor temperatures during intensive AI/NPU operations
- The high-performance processors may require adequate cooling

---

*Last updated: October 2025*