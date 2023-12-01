extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(_delta):
	movement()
	
func movement():
	var h_direction = Input.get_axis("Left", "Right")
	var v_direction = Input.get_axis("Up", "Down")
	if h_direction:
		velocity.x = h_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if v_direction:
		velocity.y = v_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
