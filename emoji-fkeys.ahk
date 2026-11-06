; emoji-fkeys.ahk — turns F1–F12 into frequently used emojis.
; Requires AutoHotkey v2 (https://www.autohotkey.com).
;
; Ctrl+Alt+E  turns the emoji keys off/on, so F-keys work normally again
;             (for example F5 to refresh or F2 to rename).

#Requires AutoHotkey v2.0
#SingleInstance Force

A_IconTip := "Emoji F-keys (Ctrl+Alt+E to pause)"

#SuspendExempt
^!e:: {
    Suspend -1
    TrayTip "Emoji F-keys", A_IsSuspended ? "Paused: F-keys work normally" : "On: F-keys type emojis"
}
#SuspendExempt False

F1:: SendText "😂"
F2:: SendText "❤️"
F3:: SendText "👍"
F4:: SendText "😊"
F5:: SendText "🙏"
F6:: SendText "😍"
F7:: SendText "🎉"
F8:: SendText "🔥"
F9:: SendText "😭"
F10:: SendText "🤔"
F11:: SendText "✅"
F12:: SendText "👏"
