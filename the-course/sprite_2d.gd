extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@export var speed = 20
@export var rot_speed = 20

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	# rotate(deg_to_rad(rot_speed * delta))
	# translate(Vector2(0,speed * delta))
	
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0,-speed * delta))
		
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0,speed * delta))
		
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(speed * delta,0))
		
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-speed * delta,0))
		
	if Input.is_key_pressed(KEY_D):
		rotate(deg_to_rad(rot_speed * delta))
		
	if Input.is_key_pressed(KEY_A):
		rotate(deg_to_rad(-rot_speed * delta))
	
	pass
