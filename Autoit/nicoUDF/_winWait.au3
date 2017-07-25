Func _whileWinExist($fv_winName, $fv_timeout = 30)

	Local $lv_count = 0
	While WinExists($fv_winName)
		Sleep(100)
		$lv_count += 1
		if $lv_count >= $fv_timeout * 10 Then ExitLoop ; multiply by 10 cause timeout is by seconds while counter is by 0.1 second
	WEnd

EndFunc