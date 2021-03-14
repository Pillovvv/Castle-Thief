extends Entity
class_name Enemy

var m_moving_state: = RandomNumberGenerator.new()
var m_jumping_state: = RandomNumberGenerator.new()

# Runs on object creation.
func _ready() -> void:
	m_moving_state.randomize()
	m_jumping_state.randomize()

# Generates a random direction to move in both x and y.
func random_move() -> Vector2:
	return Vector2(m_moving_state.randf_range(-1.0, 1.0), m_jumping_state.randf_range(-1.0, 1.0))

# Calculates the direction the Enemy will move based on the result of random_move().
# However the enemy will only be able to move horizontally if 
func calc_direciton() -> Vector2:
	var random_direction = random_move()
	if not is_on_floor():
		random_direction.y = 1.0

	return random_direction
