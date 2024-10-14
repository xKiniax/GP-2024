extends CharacterBody2D

@export var bullet_scene:PackedScene
@export var bullet_spawn_point:Node2D

const SPEED = 350.0
const JUMP_VELOCITY = -100.0

const TURN_RATE = 180

func _physics_process(delta: float) -> void:
	
	var r = Input.get_axis("turn_left", "turn_right")
	print(r)

	var rot = deg_to_rad(r * TURN_RATE * delta)
	rotate(rot)
	
	var f = Input.get_axis("move_backwards", "move_forwards")

	var vel = transform.x * f * SPEED
	print(transform.x)
	velocity = vel
	
	if Input.is_action_pressed("fire"):
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn_point.global_position
		get_parent().add_child(b)
	
	move_and_slide()
