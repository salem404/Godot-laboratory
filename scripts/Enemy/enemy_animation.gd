extends Node


@export var animation_tree: AnimationTree
@export var enemy: Enemy = get_owner()

var last_facing_direction := Vector2(0, -1)

func _ready() -> void:
	animation_tree.active = true

func _physics_process(_delta: float) -> void:
	

	
	animation_tree.set("parameters/Walk/blend_position",last_facing_direction)
	animation_tree.set("parameters/Idle/blend_position",last_facing_direction)