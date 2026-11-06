# Emoji F-keys

Turn your keyboard's function keys (F1–F12) into your most-used emojis. Press F1 and 😂 appears, in any app.

There's a version for **Windows** (AutoHotkey) and one for **Mac** (Hammerspoon).

| Key | Emoji | Key | Emoji | Key | Emoji |
|-----|-------|-----|-------|-----|-------|
| F1  | 😂    | F5  | 🙏    | F9  | 😭    |
| F2  | ❤️    | F6  | 😍    | F10 | 🤔    |
| F3  | 👍    | F7  | 🎉    | F11 | ✅    |
| F4  | 😊    | F8  | 🔥    | F12 | 👏    |

**Pause or resume:** press **Ctrl+Alt+E** on Windows or **Ctrl+Option+E** on Mac. While it's paused, the F-keys work normally again (F5 to refresh, F2 to rename, and so on).

Only a bare F-key types an emoji. Combinations such as Alt+F4 or Ctrl+F5 keep working as usual.

---

## Windows

### Install

1. Install **AutoHotkey v2** (not v1.1) from [autohotkey.com](https://www.autohotkey.com), or run this in PowerShell:
   ```
   winget install AutoHotkey.AutoHotkey
   ```
2. Download [`emoji-fkeys.ahk`](emoji-fkeys.ahk) from this page (click the file, then the download button).
3. Double-click `emoji-fkeys.ahk`. A green **H** icon appears in the system tray (bottom-right; you may need to click the **^** arrow).
4. Open Notepad and press **F1** to check that 😂 appears.

### Keep it running after a restart

The script stops when you shut down or restart your PC, and it won't start again on its own until you add it to Windows' Startup folder:

1. Press **Win+R**, type `shell:startup` and press Enter. A folder opens (it's usually empty).
2. Right-click `emoji-fkeys.ahk` and choose **Show more options → Create shortcut**.
3. Drag the new **emoji-fkeys - Shortcut** into the Startup folder.

From the next restart, the script starts by itself when you sign in. To check, look for the green **H** in the system tray.

Keep `emoji-fkeys.ahk` where it is after you do this. If you move or rename it, the shortcut stops working; delete the old shortcut and make a new one.

### Change the emojis

1. Right-click `emoji-fkeys.ahk` and choose **Open with → Notepad**.
2. Replace any emoji between the quotes, and save.
3. Right-click the green **H** tray icon and choose **Reload Script**.

### Uninstall

1. Right-click the green **H** tray icon and choose **Exit**.
2. Press **Win+R**, type `shell:startup`, and delete the `emoji-fkeys` shortcut if you made one.
3. Delete `emoji-fkeys.ahk`.
4. Optional: uninstall AutoHotkey from **Settings → Apps → Installed apps**, or run `winget uninstall AutoHotkey.AutoHotkey`.

---

## Mac

### Install

1. Install **Hammerspoon** from [hammerspoon.org](https://www.hammerspoon.org) and drag it into **Applications**. With Homebrew you can run `brew install --cask hammerspoon` instead.
2. Open Hammerspoon and allow it under **System Settings → Privacy & Security → Accessibility**.
3. Click the hammer icon in the menu bar, choose **Open Config**, and paste in the contents of [`emoji-fkeys.lua`](emoji-fkeys.lua). Save the file.
4. Click the hammer icon again and choose **Reload Config**. You'll see "Emoji F-keys on".
5. Make the F-keys act as F-keys rather than brightness and volume controls: **System Settings → Keyboard → Keyboard Shortcuts → Function Keys → Use F1, F2, etc. keys as standard function keys**. If you'd rather not change this, hold **fn** while you press the F-key.
6. Optional: in Hammerspoon's **Preferences**, tick **Launch Hammerspoon at login**.

### Change the emojis

Edit the emojis in your Hammerspoon config (**Open Config**), save it, and choose **Reload Config**.

### Uninstall

1. Click the hammer icon and choose **Quit Hammerspoon**.
2. Drag **Hammerspoon** from **Applications** to the Bin.
3. In Finder, choose **Go → Go to Folder**, type `~/.hammerspoon`, and delete that folder.
4. Remove Hammerspoon from **System Settings → Privacy & Security → Accessibility**.

---

## Troubleshooting

- **It stopped working after a restart.** The script hasn't been added to Startup. Double-click `emoji-fkeys.ahk` to start it now, then follow [Keep it running after a restart](#keep-it-running-after-a-restart). On a Mac, tick **Launch Hammerspoon at login** in Hammerspoon's Preferences.
- **Pressing F1 changes the volume or brightness instead.** Laptops and many keyboards put media controls on the F-keys. Hold **Fn** while you press the key, or turn on Fn Lock (often **Fn+Esc**).
- **Microsoft Natural and Ergonomic keyboards:** turn **F Lock** on (the key to the right of F12; its light should be lit). On the Sculpt Ergonomic Keyboard, slide the switch at the top right to the F-key side. When F Lock is off, the F-keys send shortcuts such as Undo and Save instead of F1–F12. F Lock may switch itself off after a restart.
- **Nothing happens in one particular app.** Programs running as administrator ignore keystrokes from a script that isn't. Some games block simulated typing altogether.
- **❤️ or ✅ look plain or black-and-white.** Some older apps don't show colour emoji. The character is still correct.

## Licence

[MIT](LICENSE). Free to use, change and share.
