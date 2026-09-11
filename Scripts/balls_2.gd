extends Sprite2D

var tween: Tween
@onready var anim = $AnimationPlayer

func reset_tween():
	if tween:
		tween.kill()
	tween = create_tween()
	
func _ready() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_IN).set_trans(Tween.TRANS_LINEAR).set_loops(INF)
	tween.tween_property(self, "rotation_degrees", 360, 2.0)
	tween.tween_property(self, "rotation_degrees", 0, 0.0)
