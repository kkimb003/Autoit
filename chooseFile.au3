#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
WinWait("File Upload")
ControlFocus("File Upload","","Edit1")
ControlSetText("File Upload","","Edit1","C:\Users\kkimball\Documents\Attaching commission schedule arun.docx")
ControlClick("File Upload","","Button1")