extends TextureRect

@export var atlas_texture: Texture2D
@export var x_index:int =0
@export var y_index:int = 0
@export var icon_size:int= 64

var atlas: AtlasTexture

func _ready():
	atlas = AtlasTexture.new()
	atlas.atlas = atlas_texture
	texture = atlas
	update_region()
	
func update_region():
	var x = x_index * icon_size
	var y = y_index * icon_size
	atlas.region = Rect2(x, y, icon_size, icon_size)
