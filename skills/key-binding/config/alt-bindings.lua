-- macOS-style: ALT acts like Cmd (sends CTRL+key to the focused window).
local function alt_send(mods, key)
  return function()
    hl.dispatch(hl.dsp.send_key_state({ mods = mods, key = key, state = "down" }))
    hl.timer(function()
      hl.dispatch(hl.dsp.send_key_state({ mods = mods, key = key, state = "up" }))
    end, { timeout = 50, type = "oneshot" })
  end
end

local function alt_is_terminal()
  local window = hl.get_active_window()
  if not window then return false end
  for _, tag in ipairs(window.tags or {}) do
    if tag:gsub("%*$", "") == "terminal" then return true end
  end
  return false
end

-- Copy/paste differ in terminals (CTRL+C would send SIGINT).
o.bind("ALT + C", "Copy (macOS-style)", function()
  if alt_is_terminal() then alt_send("CTRL", "Insert")() else alt_send("CTRL", "C")() end
end)
o.bind("ALT + V", "Paste (macOS-style)", function()
  if alt_is_terminal() then alt_send("SHIFT", "Insert")() else alt_send("CTRL", "V")() end
end)
o.bind("ALT + X", "Cut (macOS-style)", alt_send("CTRL", "X"))

for _, k in ipairs({ "Z", "Y", "A", "S", "F", "T", "W", "N", "L", "R", "D", "P" }) do
  o.bind("ALT + " .. k, k .. " (macOS-style)", alt_send("CTRL", k))
end
o.bind("ALT + SHIFT + X", "Extensions / Strikethrough (macOS-style)", alt_send("CTRL SHIFT", "X"))
