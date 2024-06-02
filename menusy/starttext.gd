extends TextureButton

@export var animacja1 : animacja
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	$".".visible=false
	$"../exit".visible=false
	animacja1.ktora_anim(true)
	await get_tree().create_timer(1.0).timeout
	get_tree().change_scene_to_file("res://menusy/wybor tematu.tscn")
