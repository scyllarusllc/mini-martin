---
name: key-binding
description: The user's keyboard shortcuts on this Omarchy/Hyprland machine, including macOS-style ALT shortcuts (ALT acts like Cmd). Use when the user asks how to open an app, copy/paste, switch windows or workspaces, or says "you know the key binding"; when asked to open an app, tell them the shortcut instead of launching it from the shell.
---

# Key bindings

This machine runs Omarchy (Hyprland). The user is used to macOS shortcuts, so
**ALT works like Cmd**: ALT+key sends CTRL+key to the focused window. **SUPER**
is for window management and launching apps.

When the user asks to open an app, give them the shortcut first. Only launch it
yourself (e.g. `setsid -f google-chrome-stable`) if they ask you to.

## macOS-style (ALT = Cmd)

| Keys | Action |
|---|---|
| ALT + C / V / X | Copy / Paste / Cut (in terminals: CTRL+Insert / SHIFT+Insert) |
| ALT + Z / Y | Undo / Redo |
| ALT + A / S / F | Select all / Save / Find |
| ALT + T / W / N | New tab / Close tab / New window |
| ALT + L / R / D | Address bar / Reload / Bookmark |
| ALT + P | Quick open / Print |
| ALT + SHIFT + X | Extensions / Strikethrough |

## Most-used

| Keys | Action |
|---|---|
| SUPER + SPACE | App launcher / Omarchy menu |
| SUPER + K | Show all keybindings |
| SUPER + RETURN | Terminal |
| SUPER + SHIFT + B (or SHIFT + RETURN) | Browser (Chrome) |
| SUPER + SHIFT + ALT + B | Browser (private) |
| SUPER + SHIFT + F | File manager |
| SUPER + SHIFT + N | Editor |
| SUPER + W | Close window |
| SUPER + F | Full screen |
| SUPER + T | Toggle floating/tiling |
| SUPER + 1..0 | Switch workspace |
| SUPER + SHIFT + 1..0 | Move window to workspace |
| SUPER + arrows | Move focus |
| ALT + TAB | Next window |
| SUPER + CTRL + V | Clipboard manager |
| PRINT | Screenshot |
| SUPER + CTRL + L | Lock |
| F9 | Dictation (push-to-talk) |

Full list: `references/all-bindings.txt`. It can go stale; for the live list run
`omarchy menu keybindings --print`. User overrides are in
`~/.config/hypr/bindings.lua`.
