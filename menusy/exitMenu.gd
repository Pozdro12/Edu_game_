extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	$"../Button2".visible=true
	$"../Button".visible=true
	$"../Button3".visible=true
	$"../Button4".visible=true
	$"../Button5".visible=true
	$"../Button6".visible=true
	$"../Button7".visible=true
	$"../exit".visible=true
	
	$"../Button9".visible=false
	$"../Button8".visible=false
	$"../exit2".visible=false
