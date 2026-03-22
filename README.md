# Google Meet Emoji Keybow

This project configures an original Pi Zero Pimoroni Keybow to send emoji reactions in Google Meet.

## Setup Instructions

### 1. Keybow Configuration
1. Unplug your Keybow and remove the MicroSD card.
2. Insert the MicroSD card into your Mac.
3. Access the `layouts` folder on the SD card, or place the `keys.lua` file at the root of the SD card (depending on how you have configured the layout). By default, replace the `keys.lua` file on the root of your Keybow OS SD card with the `keys.lua` file provided in this project folder.
4. Eject the SD card, put it back into the Keybow, and plug the Keybow into your Mac via USB.
5. The Keybow should boot up in ~15 seconds, and its keys will light up with the emoji colors.

### 2. Browser Extension Setup
Since Google Meet doesn't have native keyboard shortcuts for emojis, we rely on a Chrome extension.

1. Open Google Chrome.
2. Install a free Google Meet reaction extension, such as **Meet Reaction Shortcuts** or **Reactions for Google Meet**.
3. Open Chrome's extension shortcuts page by typing ``chrome://extensions/shortcuts`` in the address bar.
4. Locate your reaction extension in the list.
5. Click the shortcut field for each emoji, and **press the corresponding physical key on your Keybow**. 
   - The Keybow is programmed to output the dedicated `Numpad` keys. Pressing the key on the keypad will automatically register this key in Chrome, completely avoiding any conflicts with your Mac's normal modifiers.
   - For example, press Key 0 (Top Left, Yellow) for Thumbs Up. It should register as `Num 1` or `Numpad 1`.
6. Apply these shortcuts for the 9 distinct emojis you'd like to use.

### Usage
Once mapped, simply join a Google Meet call. Pressing the keys on the Keybow will instantly trigger the corresponding emoji reaction on screen, without interfering with your normal typing!
