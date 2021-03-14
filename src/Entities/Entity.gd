extends KinematicBody2D
class_name Entity

const FLOOR_NORMAL: = Vector2.UP
const GRAVITY: = 1.0

# Calculates the vector velocity based on:
# 	Current velocity.
# 	Speed of the Entity.
# 	Mass of the Entity.
# 	A movement direction.
# 	Time passed since last frame.
func calc_velocity(velocity: Vector2, speed: Vector2, mass: float, direction: Vector2, delta: float) -> Vector2:
	var new_velocity: = velocity
	new_velocity.x = speed.x * direction.x

	if direction.y == 1.0:
		new_velocity.y += (GRAVITY * mass) * delta
	elif direction.y == 0.0:
		new_velocity.y = 0.0
	else:
		new_velocity.y = (speed.y - mass) * direction.y

	return new_velocity
