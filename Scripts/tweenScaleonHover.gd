extends Button

var tween: Tween

func reset_tween():
	if tween:
		tween.kill()
	tween = create_tween()

func _on_mouse_entered() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_ELASTIC)
	tween.set_parallel()
	tween.tween_property($Button, "scale", Vector2(1.15, 1.15), 0.4)
