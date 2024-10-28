class_name Player
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
		

	
	position += velocity * delta
	move_and_slide()
	
