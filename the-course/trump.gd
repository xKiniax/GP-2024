extends Sprite2D

@export var speed = 10
@export var player = $"../player"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var to_player:Vector3 = player.global_position - global_position
	DebugDraw2D.set_text()
	
	pass
