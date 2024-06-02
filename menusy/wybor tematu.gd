extends Control

@export var animacja1 : animacja
# Called when the node enters the scene tree for the first time.
func _ready():
	
	animacja1.ktora_anim(false)
	await get_tree().create_timer(1.0).timeout
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

