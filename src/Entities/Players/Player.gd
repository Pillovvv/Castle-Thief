extends Entity
class_name Player

# Calculates the direction the Player will move based on user inputs.
func calc_direciton() -> Vector2:
	var y_direction
	if Input.is_action_just_pressed("player_jump") and is_on_floor():
		y_direction = -1.0
	elif Input.is_action_just_released("player_jump"):
		y_direction = 0.0
	else:
		y_direction = 1.0

	return Vector2(
		Input.get_action_strength("player_move_right") - Input.get_action_strength("player_move_left"),
		y_direction
	)
