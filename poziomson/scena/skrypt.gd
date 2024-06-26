extends Node2D

var selected = false
var rest_point
var rest_nodes=[]
var zajety_node=[]
@export var zajete = false

func _ready():
	rest_nodes=get_tree().get_nodes_in_group("zone")
	var liczba_losowa = ((rest_nodes.size())-1)
	rest_point=rest_nodes[randf_range(0,liczba_losowa)].global_position
	rest_nodes[liczba_losowa].select()


func _on_area_2d_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position,get_global_mouse_position(),25*delta)
		look_at(get_global_mouse_position())
	else:
		global_position=lerp(global_position, rest_point, 10*delta)
		rotation = lerp_angle(rotation, 0 , 10*delta)
		

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
			selected = false
			var shortest_dist = 128
			for child in rest_nodes:
				var distance = global_position.distance_to(child.global_position)
				if distance < shortest_dist:
					if !zajety_node:
						child.select()
						rest_point=child.global_position
						shortest_dist=distance
						zajety_node[rest_point]=true
