extends CharacterBody2D

const VELOCITY = 320

func _physics_process(delta: float) -> void:
	velocity = Vector2(0,0)
	if(Input.is_action_pressed("move_down")):
		velocity.y = VELOCITY
	if(Input.is_action_pressed("move_up")):
		velocity.y = -VELOCITY
	if(Input.is_action_pressed("move_left")):
		velocity.x = -VELOCITY
	if(Input.is_action_pressed("move_right")):
		velocity.x = VELOCITY
	
	var rect = get_viewport_rect()
	global_position = global_position.clamp(Vector2(0,0), rect.size)

	move_and_slide()
