# Google Meet Emoji Keybow (Device Script)

This repository contains the Lua script to configure an original Pi Zero Pimoroni Keybow as a dedicated hardware emoji reaction pad for Google Meet.

> **Note:** This is Part 1 of the project. It works in tandem with the custom Chrome Extension (located in the `keybow_extension` repository).

## 1. Keybow OS Setup
This script runs entirely on the Keybow's Raspberry Pi Zero W, which requires the official Keybow OS firmware to boot. 

1. Format a MicroSD card to **FAT32** (MS-DOS FAT).
2. Download the [Keybow OS ZIP](https://github.com/pimoroni/keybow-firmware/releases/download/v0.0.4/keybow-0.0.4.zip) from Pimoroni's firmware releases.
3. Unzip the file and copy all of the inner content directly onto the root of the MicroSD card (you should see files like `bootcode.bin` and `start.elf` at the top level of the card).

## 2. Install the Custom Layout
This project maps the physical keys to standard **Numpad Keys** (`Numpad 1` through `Numpad =`), avoiding macOS and Windows system shortcut conflicts.

1. Copy the `keys.lua` file from this repository and place it into the root directory of your MicroSD card.
2. Overwrite the default `keys.lua` file when prompted.
3. Eject the SD card, insert it into the Keybow, and plug the USB cable into your computer. 
4. The Keybow will boot in ~15 seconds, and the keys will illuminate with colors matching the assigned emojis.

## 3. Browser Extension Setup
For the Keybow's Numpad outputs to actually trigger emojis in Google Meet, you must install the paired Chrome Extension from the `keybow_extension` repository. This extension passively listens for the Numpad keystrokes and programmatically triggers the reactions in the Google Meet interface.
