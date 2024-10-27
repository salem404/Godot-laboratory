extends CharacterBody2D


@export var speed = 120 # How fast the player will move (pixels/sec).

const MAX_HEALTH := 20.0
var health

var timing_damage := false

func damage(attack_damage):
	health -= attack_damage

func _ready() -> void:
	health = MAX_HEALTH

func _process(delta: float) -> void:
	
	move_and_slide()
