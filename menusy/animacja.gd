extends Control

class_name animacja
@onready var animation_tex: TextureRect = $TextureRect
@onready var przejscie : AnimationPlayer=$AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready():
	animation_tex.visible = false
	Globalny.load_data()

func ktora_anim(zmiana:bool):
	if zmiana:
		przejscie.queue("fadeout")
	else:
		przejscie.queue("fadein")
