strCommand = "cmd /c scrcpy --window-x 1500 --window-y 100 --window-width 324  --window-height 720 --stay-awake "

For Each Arg In WScript.Arguments
    strCommand = strCommand & " """ & replace(Arg, """", """""""""") & """"
Next

CreateObject("Wscript.Shell").Run strCommand, 0, false
