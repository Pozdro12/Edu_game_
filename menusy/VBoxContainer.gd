extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = get_tree().create_tween()
	await get_tree().create_timer(1.0).timeout
	tween.tween_property(self, "position", Vector2(300, 0), 1)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
