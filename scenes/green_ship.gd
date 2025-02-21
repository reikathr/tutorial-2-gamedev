extends RigidBody2D

var platform_velocity := Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _integrate_forces(state):
	var viewport_rect = get_viewport_rect().size
	var new_position = state.transform.origin

	new_position.x = clamp(new_position.x, 50, viewport_rect.x-50)
	new_position.y = clamp(new_position.y, 50, viewport_rect.y-50)

	state.transform = Transform2D(state.transform.get_rotation(), new_position)
