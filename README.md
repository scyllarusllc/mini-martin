# mini-martin

Personal Claude Code skills for this machine.

## Skills

- `key-binding`: Omarchy/Hyprland shortcuts, including the macOS-style ALT bindings

## Install

Make the skill available in every Claude Code session:

```bash
ln -s ~/mini-martin/skills/key-binding ~/.claude/skills/key-binding
```

Enable the ALT-as-Cmd bindings in Hyprland (append to `~/.config/hypr/bindings.lua`, then `hyprctl reload`):

```bash
cat skills/key-binding/config/alt-bindings.lua >> ~/.config/hypr/bindings.lua
```

## Use

```bash
claude --plugin-dir ~/mini-martin
```

Refresh the keybinding list:

```bash
omarchy menu keybindings --print > skills/key-binding/references/all-bindings.txt
```

## Notes

- Default browser on this machine is Google Chrome (`google-chrome.desktop`). If a browser launch fails with "command not found", check `~/.config/mimeapps.list` for entries pointing at an uninstalled browser, and verify with `omarchy-cmd-default-browser`.
- GitHub CLI login: `gh auth login -h github.com -p https -w`, then enter the one-time code printed in the terminal at https://github.com/login/device.

## License

MIT
