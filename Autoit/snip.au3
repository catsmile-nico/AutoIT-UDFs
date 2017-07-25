#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=metro_128_snipping.ico
#AutoIt3Wrapper_UseUpx=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GuiToolbar.au3>
Run(@ComSpec & ' /c snippingtool','', @SW_HIDE)
WinWaitActive('Snipping','',5)

$lv_control = ControlGetHandle('Snipping','','ToolbarWindow321')
_GUICtrlToolbar_ClickIndex($lv_control, 0)

_whileWinExist('Snipping')

Func _whileWinExist($fv_winName, $fv_timeout = 30)

	Local $lv_count = 0
	While WinExists($fv_winName)
		Sleep(100)
		$lv_count += 1
		if $lv_count >= $fv_timeout * 10 Then ExitLoop ; multiply by 10 cause timeout is by seconds while counter is by 0.1 second
	WEnd

EndFunc