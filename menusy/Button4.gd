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
	$"../zal_uzu".visible=false
	$"../zal_uzu2".visible=false
	
	$"../Button9".visible=true
	$"../Button8".visible=true
	$"../exit2".visible=true
	if Globalny.mnozenie_ukonczone==true:
		$"../zal_mno".visible=true
	else:
		$"../zal_mno".visible=false
	
	if Globalny.dzielenie_ukonczone==true:
		$"../zal_dziel".visible=true
	else:
		$"../zal_dziel".visible=false
	
func _on_mouse_entered():
	$Label.set("theme_override_colors/font_color", Color(0, 70, 0))


func _on_mouse_exited():
	$Label.set("theme_override_colors/font_color", Color(255, 255, 255))
