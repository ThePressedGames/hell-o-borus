# @tool
extends Sprite2D


# Array with all the possible textures that a background element can have
@export var sprites: Array[Texture2D]


func _ready():
	if !sprites.is_empty():
		# Randomize texture
		var random_sprite = sprites.pick_random()
		texture = random_sprite


func update_position(x_offset: float, y_offset: float):
	position.x = x_offset
	position.y = y_offset + randf_range(-20, +20)


func calculate_next_offset(current_offset: float, min_spacing: int, max_spacing: int):
	return current_offset + randi() % (max_spacing - min_spacing) + min_spacing