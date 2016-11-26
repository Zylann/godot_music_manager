extends Node


func _on_Button1_pressed():
	MusicManager.fade(preload("music.ogg"), 1.0, 1.0)


func _on_Button2_pressed():
	MusicManager.fade(preload("music2.ogg"), 1.0, 1.0)


func _on_StopButton_pressed():
	MusicManager.fade(null, 1.0)


func _on_Button1_2_pressed():
	MusicManager.fade(preload("music.ogg"), 1.0, null, 1.0)


func _on_StopButtonNow_pressed():
	MusicManager.stop_all()


func _on_Button3_pressed():
	MusicManager.fade(preload("music3.ogg"), 1.0, 1.0)
