#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <Excel.au3>
Global $oWorkbook = _Excel_BookOpen ( _Excel_Open(), "C:\Users\kkimball\Documents\ITSR 875206- GA PPA 3.5.1 AnnualTerm in Guidewire - Test Cases.xlsx"  )
$oWorkbook.ActiveSheet.range("A5","B5").Select