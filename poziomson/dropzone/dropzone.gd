extends Marker2D
var zajete

func _draw():
	draw_rect(Rect2(-64,-64,128,128),Color.BLANCHED_ALMOND)

func select():
	for child in get_tree().get_nodes_in_group("zone"):
		child.deselect()
		zajete = true
	modulate = Color.WEB_MAROON
	
func deselect():
	modulate = Color.WHITE
	zajete = false
