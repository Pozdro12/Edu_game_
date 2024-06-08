extends Button

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	$"../Button2".visible=false
	$"../Button".visible=false
	$"../Button3".visible=false
	$".".visible=false
	$"../Button5".visible=false
	$"../Button6".visible=false
	$"../Button7".visible=false
	$"../exit".visible=false
	
	$"../Button9".visible=true
	$"../Button8".visible=true
	$"../exit2".visible=true
	
func _on_mouse_entered():
	$Label.set("theme_override_colors/font_color", Color(0, 70, 0))


func _on_mouse_exited():
	$Label.set("theme_override_colors/font_color", Color(255, 255, 255))
