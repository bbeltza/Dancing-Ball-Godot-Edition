extends Control

var tween: Tween

func reset_tween():
	if tween:
		tween.kill()
	tween = create_tween()
