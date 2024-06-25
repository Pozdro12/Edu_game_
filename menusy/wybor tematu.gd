extends Control

@export var animacja1 : animacja
# Called when the node enters the scene tree for the first time.
func _ready():
	$Button9.visible=false
	$Button8.visible=false
	$exit2.visible=false
	$zal_mno.visible=false
	$zal_dziel.visible=false
	
	animacja1.ktora_anim(false)
	await get_tree().create_timer(1.0).timeout
	if Globalny.uzupelnianie_ukonczone==true:
		$zal_uzu.visible=true
	else:
		$zal_uzu.visible=false
	
	if Globalny.geom_ukoncz==true:
		$zal_uzu2.visible=true
	else:
		$zal_uzu2.visible=false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func MnozeniePrzejscie(zmiennaMnoz:bool):
	if zmiennaMnoz:
		var tween = create_tween()
		var target_pos = $Button2.position + Vector2 (-500,0)
		tween.tween_property($Button2,"position",target_pos,0.1)
		tween.tween_property($Button,"position",target_pos,0.1)
		tween.tween_callback(
			func end_movement():
			$Button2.position = target_pos
		)
	else:
		pass
