extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	if Globalny.poziom1_uzupelnianie==true:
		$"4".disabled=false
	else:
		$"4".disabled=true
	
	if Globalny.poziom2_uzupelnianie==true:
		$"2".disabled=false
	else:
		$"2".disabled=true
	
	if Globalny.poziom3_uzupelnianie==true:
		$"3".disabled=false
	else:
		$"3".disabled=true


func _process(delta):
	pass
