class_name Player
extends CharacterBody2D

var aim_position : Vector2 = Vector2(1, 0)

var is_attacking := false

func _process(_delta: float) -> void:
	if Input.is_action_pressed("action_a"):
		is_attacking = true
		

func end_attack():
	is_attacking = false

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var half_viewport = get_viewport_rect().size / 2.0
		aim_position = (event.position - half_viewport)
