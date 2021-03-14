extends Player

export var m_speed: = Vector2(500.0, 1500.0)
export var m_mass: = 1000.0
var m_velocity: = Vector2.ZERO

# Runs this as well as Entities _physics_process.
# Delta is time passed since last frame.
func _physics_process(delta: float) -> void:
	m_velocity = move_and_slide(calc_velocity(m_velocity, m_speed, m_mass, calc_direciton(), delta), FLOOR_NORMAL)
