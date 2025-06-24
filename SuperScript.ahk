#Requires AutoHotkey v2.0

; For autocorrecting
::ReplacesThis::With this!

/*
+ is shift
^ is ctrl
# is windows key
! is alt
*/

; Runs this Skricpt again!
!w:: Run "MyFirstScript.ahk"

; Writes this is John
^q:: Send "this is John"

; Show a messagebox with How are you
; AND Writes this is John 😎
!q::
{
    Send "This is John"
    MsgBox "How are you?"
}

; Escapes the autohotkey folder, opening the folder before it
!e:: Run ".."

; GUESS WHAT THIS DOES, Hint: it opens youtube.com in brrowser
!r:: Run "https://youtube.com"

SetTimer CheckSteam, 100
CheckSteam() {
    if WinActive("ahk_exe steam.exe") {
        MsgBox("Yoooooo")
    }
}

; presses w and s backan forth to prevent AFK kick or wharrevver
toggle := false
F1::
{
    global toggle
    toggle := !toggle
    SetTimer AntiAFKengage, toggle ? 500 : 0  ; start or stop the timer
}
AntiAFKengage()
{
    static state := false
    Send state ? "s" : "w"
    state := !state
}

return