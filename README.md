### As of 2021/07/01:  
**This project is still a WIP.  Code is being ported over from the [microcontroller version in this repository](https://github.com/Gunmetal-61/FFT-Audio-Speaker-MCU).  Also, please look at the [project board](https://github.com/users/Gunmetal-61/projects/1) for a more accurate day-to-day view of current issues and features being worked on.**

# FFT-Audio-Speaker-FPGA
A custom bluetooth speaker project conceived from an FFT mini-project.  This MCU version serves as a test bed for the [FPGA version](https://github.com/Gunmetal-61/FFT-Audio-Speaker-FPGA).

![Audio Spectrum Display Closeup](https://github.com/Gunmetal-61/FFT-Audio-Speaker-MCU/blob/gh-pages/video/IMG_1387.gif)

<br />

## Table of Contents
1. [Overview](#1-Overview)
2. [Feature List](#2-Feature-List)
3. [Future Changes and Additions](#3-Future-Changes-and-Additions)
4. [Issues](#4-Issues)
5. [List of Components and Tools](#5-List-of-Components-and-Tools)
   - [Hardware](#Hardware)
   - [Software](#Software)
6. [Derived Sources](#6-Derived-Sources)
   - [shajeebtm's 32-Band Audio Visualizer Arduino Project](#shajeebtms-32-band-audio-visualizer-arduino-project)
7. [Schematic Diagram](#7-Schematic-Diagram)
8. [References](#8-References)
   - [Source Code/Hardware Inspiration](#source-codehardware-inspiration)
   - [Documentation](#documentation)
   - [Technical Guides](#technical-guides)
   - [Theory](#theory)
   - [Other](#other)

<br />

## 1. Overview

This project began as a venture in understanding and implementing Discrete Fast Fourier Transforms (DFFTs) in FPGAs.  The ultimate objective is to create a custom Verilog-based IP where the DFFT is computed using dedicated hardware, allowing me to sample at an extremely high count.

This repository contains elements of what is in [this microcontroller version repository](https://github.com/Gunmetal-61/FFT-Audio-Speaker-MCU).

<br />

## 2. Feature List

- Real-Time Audio Visualization with Adjustable Frequency Range and Number of Columns
- Single SSD1306 Display
- Audio Signal Input via 3.5mm Jack

<br />

## 3. Future Changes and Additions

Please look at the [project board](https://github.com/users/Gunmetal-61/projects/1) for a more accurate day-to-day view of current issues and features being worked on.

<br />

## 4. Issues

Please look at the [project board](https://github.com/users/Gunmetal-61/projects/1) for a more accurate day-to-day view of current issues and features being worked on.

<br />

## 5. List of Components and Tools

### Hardware

- [Diligent Arty S7-50 Spartan-7 FPGA Development Board](https://store.digilentinc.com/arty-s7-spartan-7-fpga-development-board/)
- [SSD1306 128x64 I2C 0.96" OLED Display](https://www.aliexpress.com/item/32957392300.html?spm=a2g0s.9042311.0.0.27424c4dz9fnHf)
- [SparkFun TRRS 3.5mm Jack Breakout](https://www.sparkfun.com/products/11570)
- Breadboard
- 3x 5.1 KOhm In-Line Resistors
- 2x 100 KOhm In-Line Resistors (for audio signal voltage divider)
- 4x 10 KOhm In-Line Resistors (for pulldown purposes with the buttons)
- 2x 100 nF Capacitors

### Software

- Vivado 2020.02
- Xilinx Vitis 2020.02
- Libraries
   - [arduinoFFT](https://github.com/kosme/arduinoFFT)
   - [Adafruit_GFX_Microblaze](https://github.com/jmwilson/Adafruit-GFX-Library_MicroBlaze) - A port of the Arduino library over to the Xilinx Microblaze soft processor implemented on the FPGA.  By jmwilson.
   - [Adafruit_SSD1306_Microblaze](https://github.com/Gunmetal-61/Adafruit_SSD1306_MicroBlaze) - A fork of my own adapted from jmwilson's repository of the same name.  I needed to add I2C support.

<br />

## 6. Derived Sources

### shajeebtm's 32-Band Audio Visualizer Arduino Project

I initially started this project off with the code and hardware components/config from [this repository](https://github.com/shajeebtm/Arduino-audio-spectrum-visualizer-analyzer).  There is also an [Arduino Project Hub writeup](https://create.arduino.cc/projecthub/shajeeb/32-band-audio-spectrum-visualizer-analyzer-902f51).

I then proceeded to heavily modify the project.  I subdivided the code into logical functions and made the FFT visualizer much more parameterizable (adjusting the number of columns samples, etc.).  Instead of using a MAX7219-driven 32x8 LED matrix, I used a 128x64 SSD1306 OLED display (I2C version).  The code has also been ported over to the Arduino MKR Zero which uses an entirely different microcontroller.  This provides far more power and memory to support the higher resolution display and faster FFT calculation with more samples.

<br />

## 7. Schematic Diagram

As the project's hardware configuration is still in flux with many components to be added, there is no diagram here.  However, it should be sufficient to follow the schematic shown on [shajeebtm's project page](https://create.arduino.cc/projecthub/shajeeb/32-band-audio-spectrum-visualizer-analyzer-902f51).  Just replace the Arduino Nano for the Arty S7-50's I/O on the "Arduino Uno" portion of the shield and substitute the SSD1306 for the MAX7219 on the I2C bus.  Refer to the comments in the code to figure out which pins the I/O has been likewise re-mapped to.

As the Arty S7-50 is all 3.3V logic, connect the wire which links 5V to the **display mode** button to the MKR Zero's 3.3V power pin instead.

<br />

## 8. References

### Source Code/Hardware Inspiration
 - Arduino 32 Band Audio Spectrum Visualizer / Analyzer - shajeebtm
   - [GitHub](https://github.com/shajeebtm/Arduino-audio-spectrum-visualizer-analyzer)
   - [Arduino Project Hub Writeup](https://create.arduino.cc/projecthub/shajeeb/32-band-audio-spectrum-visualizer-analyzer-902f51)

### Documentation
 - 
 - SSD1306 OLED Display
   - [Adafruit SSD1306 Arduino Library API/Class Reference](http://adafruit.github.io/Adafruit_SSD1306/html/class_adafruit___s_s_d1306.html)

### Technical Guides
- Device Communication Protocols
  - AXI
    - [Introduction to the Advanced Extensible Interface (AXI) - All About Circuits](https://www.allaboutcircuits.com/technical-articles/introduction-to-the-advanced-extensible-interface-axi/)
  - I2C
    - [Using the I2C Bus - Robot Electronics](https://www.robot-electronics.co.uk/i2c-tutorial)
    - [I2C - sparkfun](https://learn.sparkfun.com/tutorials/i2c)
    - [I2C： What's That? - I2C Bus](https://www.i2c-bus.org/)
  - SPI
    - [Serial Peripheral Interface (SPI) - sparkfun](https://learn.sparkfun.com/tutorials/serial-peripheral-interface-spi/all)
  - [SPI vs I2C Protocols - Pros and Cons](https://www.arrow.com/en/research-and-events/articles/spi-vs-i2c-protocols-pros-and-cons)

### Theory
- Understanding Fast Fourier Transforms
  - [Seeing Circles, Sines, and Signals: A Compact Primer on Digital Signal Processing - Jack Schaedler](https://jackschaedler.github.io/circles-sines-signals/index.html)
  - [An Interactive Guide To The Fourier Transform - BetterExplained](https://betterexplained.com/articles/an-interactive-guide-to-the-fourier-transform/)
  - [Four Ways to Compute an Inverse FFT Using the Forward FFT Algorithm - Rick Lyons, DSPRelated](https://www.dsprelated.com/showarticle/800.php)
- Digital Audio
  - [Digital Audio Basics: Audio Sample Rate and Bit Depth - Griffin Brown, iZotope](https://www.izotope.com/en/learn/digital-audio-basics-sample-rate-and-bit-depth.html)
- Signal Propagation - Setup and Hold Time
  - [Understanding the Basics of Setup and Hold Time - EDN](https://www.edn.com/understanding-the-basics-of-setup-and-hold-time/)

### Other

<br />

_Last Updated: 2021.07.05 11:58 PST_
