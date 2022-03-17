strCommand = "cmd /c d: & cd scrcpy-win64-v1.23 & scrcpy --window-x 1500 --window-y 100 --window-width 324  --window-height 720 --stay-awake "



CreateObject("Wscript.Shell").Run strCommand, 0, false
