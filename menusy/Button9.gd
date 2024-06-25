extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	get_tree().change_scene_to_file("res://Mnozenie_poziomy/wybor_poziomu_mnoz/Wybor_poziomu_mnoz.tscn")

func _on_mouse_entered():
	$Label.set("theme_override_colors/font_color", Color(0, 70, 0))


func _on_mouse_exited():
	$Label.set("theme_override_colors/font_color", Color(255, 255, 255))
