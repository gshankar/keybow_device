# Google Meet Emoji Keybow (Hardware Script)

This repository contains the Lua script to configure an original Pi Zero Pimoroni Keybow as a dedicated hardware emoji reaction pad for Google Meet.

> 🔗 **Part 1 of 2:** This hardware script works in tandem with the custom Chrome Extension located in the **[keybow_extension](https://github.com/gshankar/keybow_extension)** repository.

## How It Works
The Keybow is an external keypad powered by a Raspberry Pi Zero W. This script maps the physical 12 keys on the Keybow to emit standard **Numpad Keys** (`Numpad 1` through `Numpad =`) over USB. 

By using Numpad keys instead of complex modifier combinations (like `Ctrl+Shift+Number`), we avoid conflicts with built-in macOS/Windows system accessibility shortcuts and eliminate modifier "sticking" bugs. The companion Chrome Extension listens specifically for these raw Numpad signals to trigger reactions onscreen!

## 1. Keybow OS Setup
This script runs entirely on the Keybow's Raspberry Pi Zero W, which requires the official Keybow OS firmware to boot. 

1. Format a MicroSD card to **FAT32** (MS-DOS FAT).
2. Download the [Keybow OS ZIP](https://github.com/pimoroni/keybow-firmware/releases/download/v0.0.4/keybow-0.0.4.zip) from Pimoroni's firmware releases.
3. Unzip the file and copy all of the inner content directly onto the root of the MicroSD card (you should see files like `bootcode.bin` and `start.elf` at the top level of the card).

## 2. Install the Custom Layout
1. Copy the `keys.lua` file from this repository and paste it into the root directory of your MicroSD card.
2. Overwrite the default `keys.lua` file when prompted.
3. Eject the SD card, insert it into the Keybow, and plug the USB cable into your computer. 
4. The Keybow will boot in ~15 seconds, and the keys will illuminate with colors matching the assigned emojis.

### Key Layout & Color Mapping
When holding the Keybow with the USB cable facing "up" (away from you), the keys are mapped to their respective emojis and LED colors perfectly from top-left to bottom-right:

| Position | Emoji | LED Color | Numpad Key Emitted |
|----------|-------|-----------|--------------------|
| **Top Left** | ❤️ Heart | Red | `Numpad 1` |
| **Top Mid** | 👍 Thumbs Up | Yellow | `Numpad 2` |
| **Top Right** | 🎉 Party | Purple | `Numpad 3` |
| **Mid Left** | 👏 Clap | Green | `Numpad 4` |
| **Center** | 😂 Laugh | Bright Blue | `Numpad 5` |
| **Mid Right** | 😮 Surprise | Pink | `Numpad 6` |
| **Bot Left** | 😢 Cry | Dark Blue | `Numpad 7` |
| **Bot Mid** | 🤔 Thinking | Orange | `Numpad 8` |
| **Bot Right** | 👎 Thumbs Down | Yellow | `Numpad 9` |

## Next Steps
Head over to the **[keybow_extension](https://github.com/gshankar/keybow_extension)** repository to install the software side of this project!
