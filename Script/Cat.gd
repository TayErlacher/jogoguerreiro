extends KinematicBody2D

const SPEED = 500
const GRAVIT = 1500 
const JUMP_FORCE = -800


var velocity = Vector2()
var isDead = false


func _physics_process(delta):
	
	
	velocity.y += GRAVIT * delta 
	
	var walk_left = Input.is_action_pressed("ui_left")
	var walk_right = Input.is_action_pressed("ui_right")
	var jump = Input.is_action_just_pressed("ui_up")
	var jump_stop = Input.is_action_just_released("ui_up")
	
	
	if walk_left:
		velocity.x = -SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.animation ="walk"
	elif walk_right:
		velocity.x = SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.animation ="walk"
	else:
		velocity.x = 0
		$AnimatedSprite.animation ="idle"
		
	if is_on_floor():
		if jump:
			velocity.y = JUMP_FORCE
	else:
		$AnimatedSprite.animation = "fall"
	
	
	velocity = move_and_slide(velocity, Vector2(0, -1))	
	
func dead_player():
	$AnimatedSprite.animation = "dead"
	isDead = true

