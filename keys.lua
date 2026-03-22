require "keybow"

-- Google Meet Emoji & Media Setup for Pimoroni Keybow
-- Maps keys to Numpad Keys (Numpad 1 to 9, 0, etc.)

-- Toggle states for Media Controls
local mute_muted = false
local video_off = false
local hand_raised = false

function tap_numpad(hid_code)
    -- Press the key
    keybow.set_key(hid_code, true)
    keybow.sleep(50)
    -- Release the key
    keybow.set_key(hid_code, false)
    keybow.sleep(100)
end

function update_toggles()
    -- Key 9: Mute (Red when muted, White when unmuted)
    if mute_muted then keybow.set_pixel(9, 255, 0, 0) else keybow.set_pixel(9, 255, 255, 255) end
    -- Key 10: Video (Red when off, White when on)
    if video_off then keybow.set_pixel(10, 255, 0, 0) else keybow.set_pixel(10, 255, 255, 255) end
    -- Key 11: Raise Hand (Green when raised, White when not)
    if hand_raised then keybow.set_pixel(11, 0, 255, 0) else keybow.set_pixel(11, 255, 255, 255) end
end

function setup()
    -- Set custom lights manually
    keybow.auto_lights(false)
    keybow.clear_lights()

    -- Key 0: Heart (Red)
    keybow.set_pixel(0, 255, 0, 0)
    -- Key 1: Thumbs Up (Yellow)
    keybow.set_pixel(1, 255, 255, 0)
    -- Key 2: Party Popper (Purple)
    keybow.set_pixel(2, 128, 0, 255)
    -- Key 3: Clap (Green)
    keybow.set_pixel(3, 0, 255, 0)
    -- Key 4: Laugh (Bright Blue)
    keybow.set_pixel(4, 0, 191, 255)
    -- Key 5: Surprise (Pink)
    keybow.set_pixel(5, 255, 0, 128)
    -- Key 6: Cry (Dark Blue)
    keybow.set_pixel(6, 0, 0, 255)
    -- Key 7: Thinking (Orange)
    keybow.set_pixel(7, 255, 128, 0)
    -- Key 8: Thumbs Down (Yellow)
    keybow.set_pixel(8, 255, 255, 0)
    
    update_toggles()
end

-- EMOJI KEYS (Top 9)
function handle_key_00(pressed)
    if pressed then tap_numpad(89) end -- Numpad 1
end
function handle_key_01(pressed)
    if pressed then tap_numpad(90) end -- Numpad 2
end
function handle_key_02(pressed)
    if pressed then tap_numpad(91) end -- Numpad 3
end
function handle_key_03(pressed)
    if pressed then tap_numpad(92) end -- Numpad 4
end
function handle_key_04(pressed)
    if pressed then tap_numpad(93) end -- Numpad 5
end
function handle_key_05(pressed)
    if pressed then tap_numpad(94) end -- Numpad 6
end
function handle_key_06(pressed)
    if pressed then tap_numpad(95) end -- Numpad 7
end
function handle_key_07(pressed)
    if pressed then tap_numpad(96) end -- Numpad 8
end
function handle_key_08(pressed)
    if pressed then tap_numpad(97) end -- Numpad 9
end

-- MEDIA / STATUS KEYS (Bottom 3)
function handle_key_09(pressed)
    if pressed then 
        mute_muted = not mute_muted
        update_toggles()
        tap_numpad(98) -- Numpad 0
    end
end
function handle_key_10(pressed)
    if pressed then 
        video_off = not video_off
        update_toggles()
        tap_numpad(99) -- Numpad .
    end
end
function handle_key_11(pressed)
    if pressed then 
        hand_raised = not hand_raised
        update_toggles()
        tap_numpad(103) -- Numpad =
    end
end
