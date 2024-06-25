extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	if Globalny.poziom1_dzielenie==true:
		$"1".disabled=false
	else:
		$"1".disabled=true
	
	if Globalny.poziom2_dzielenie==true:
		$"2".disabled=false
	else:
		$"2".disabled=true
	
	if Globalny.poziom3_dzielenie==true:
		$"3".disabled=false
	else:
		$"3".disabled=true


func _process(delta):
	pass
