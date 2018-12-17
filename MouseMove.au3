#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
;ConsoleWrite("start ")
;ConsoleWrite($aPos[0])
;ConsoleWrite("  ")
;ConsoleWrite($apos[1])
;ConsoleWrite(" end test")
$Minutes = 480 ; will wait 90 minutes

Local $60Count = 0, $begin = TimerInit(), $aPos = MouseGetPos()
While $Minutes > $60Count

    $dif = TimerDiff($begin)
    $dif2 = StringLeft($dif, StringInStr($dif, ".") -1)
    $Count = int($dif/1000)
    $60Count = Int($Count / 60)




   $aPos = MouseGetPos()
   If(mod($dif2,6000) == 0) Then

	  ;ConsoleWrite(Mod($Count,2))

	  MouseMove($apos[0] - 1, $apos[1], 0)
	  MouseMove($apos[0] + 1, $apos[1], 0)
	  MouseMove($apos[0], $apos[1], 0)
   EndIf

;   If(mod($dif2,1000) == 0) Then
;	   ToolTip("Minutes Required = " & $Minutes & @CRLF & "Minutes Past = " & $60Count & @CRLF & "Seconds Count = " & $Count & @CRLF , 1286, 792, "Time Machine #1", 1)
;
;	   Sleep(20)
;   EndIf
WEnd

MsgBox(64, "Time-Up!!", "Your " & $Minutes & " minutes have passed    ")