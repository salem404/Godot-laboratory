extends CharacterBody2D

@export var speed = 120 # How fast the player will move (pixels/sec).



func _process(delta: float) -> void:
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.flip_h = velocity.x > 0
		if velocity.x != 0:
			$AnimatedSprite2D.animation = "walk_side"
		else:
			if velocity.y > 0:
				$AnimatedSprite2D.animation = "walk_front"
			else:
				$AnimatedSprite2D.animation = "walk_back"
	else:
		$AnimatedSprite2D.animation = "idle_front"
	
	$AnimatedSprite2D.play()
	position += velocity * delta
	move_and_slide()
	
