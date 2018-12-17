#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <MsgBoxConstants.au3>

$Minutes = 31

Local $60Count = 0, $begin = TimerInit(), $aPos = MouseGetPos()
$temp = 30

While $temp <> 0

    $dif = TimerDiff($begin)
    $dif2 = StringLeft($dif, StringInStr($dif, ".") -1)
    $second = int($dif/1000)
    $minute = Int($second / 60)
	$hour = Int($minute/60)


   ;ToolTip( "dif: " & $dif & @CRLF & "dif2"  & $dif2 & @CRLF & "Count: " & $Count  & @CRLF & "60Count: " & $60Count  & @CRLF & "hourCount: " & $hourCount, 1200, 700, "Minutes Left", 1)


   ;If(($hour >= 8) And (mod($second,60) == 0)) Then
   If(mod($dif2,60000) == 0 And $hour < 8) Then

	  ToolTip( $hour & @CRLF & Mod($minute,60), 1896, 1004, "", 1)
	  ;ConsoleWrite(Mod($Count,2))

   ElseIf(mod($dif2,60000) == 0 And $hour >= 8) Then
	  $temp = 30 - Mod($minute,60)
	  ToolTip( $temp, 1815, 1004, "Minutes Left", 1)

   EndIf


WEnd

$temp = 60
$begin = TimerInit()
	  MsgBox($MB_OKCANCEL, "GO HOME!!", "Or do you have overtime?")

While $temp <> 0

   $dif = TimerDiff($begin)
    $dif2 = StringLeft($dif, StringInStr($dif, ".") -1)
    $second = int($dif/1000)
    $minute = Int($second / 60)
	$hour = Int($minute/60)


   ;ToolTip( "dif: " & $dif & @CRLF & "dif2"  & $dif2 & @CRLF & "Count: " & $Count  & @CRLF & "60Count: " & $60Count  & @CRLF & "hourCount: " & $hourCount, 1200, 700, "Minutes Left", 1)


   ;If(($hour >= 8) And (mod($second,60) == 0)) Then
   If(mod($dif2,60000) == 0) Then
	  ;$temp = 60 - Mod($minute,60)
	  ToolTip( "H " & $hour & "M " & mod($minute,60), 1831, 1004, "Overtime", 1)
	  ;ToolTip( $hour & @CRLF & Mod($minute,60), 1417, 825, "", 1)


   EndIf

WEnd



















