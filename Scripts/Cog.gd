extends Button

var tween: Tween
@onready var anim = $AnimationPlayer

func reset_tween():
	if tween:
		tween.kill()
	tween = create_tween()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	mouse_entered.connect(_on_mouse_entered)
	mouse_exited.connect(_on_mouse_exited)
	

func _on_mouse_entered() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
	tween.parallel().tween_property(self, "scale", Vector2(19.99, 19.99), 0.4)
	tween.parallel().tween_property(self, "rotation_degrees", (10), 0.4)

func _on_mouse_exited() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
	tween.parallel().tween_property(self, "scale", Vector2(15.61, 15.61), 0.4)
	tween.parallel().tween_property(self, "rotation_degrees", (0), 0.4)

	
func _on_pressed() -> void:
	reset_tween()
	tween.set_ease(Tween.EASE_OUT).set_trans(Tween.TRANS_CUBIC)
	tween.tween_property(self, "rotation_degrees", (360), 1.0)
	anim.play("panelshow")
