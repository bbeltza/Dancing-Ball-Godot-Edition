extends MeshInstance3D

@onready 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

$Camera3D.position = lerp($Camera3D.position, position, 0.01)
