-- Emoji F-keys: F1–F12 type frequently used emojis.
-- Ctrl+Option+E pauses/resumes so F-keys work normally.
-- For Hammerspoon on macOS (https://www.hammerspoon.org): paste into ~/.hammerspoon/init.lua.

local emojis = {
  f1 = "😂", f2 = "❤️", f3 = "👍", f4 = "😊",
  f5 = "🙏", f6 = "😍", f7 = "🎉", f8 = "🔥",
  f9 = "😭", f10 = "🤔", f11 = "✅", f12 = "👏",
}

local hotkeys = {}
for key, emoji in pairs(emojis) do
  table.insert(hotkeys, hs.hotkey.new({}, key, function() hs.eventtap.keyStrokes(emoji) end))
end

local enabled = false
local function setEnabled(on)
  for _, h in ipairs(hotkeys) do
    if on then h:enable() else h:disable() end
  end
  enabled = on
  hs.alert.show(on and "Emoji F-keys on" or "Emoji F-keys paused")
end

setEnabled(true)
hs.hotkey.bind({"ctrl", "alt"}, "e", function() setEnabled(not enabled) end)
