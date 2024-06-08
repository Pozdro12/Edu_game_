extends NinePatchRect
var answer
var correct_answer = Random.num1 + Random.num2

# Called when the node enters the scene tree for the first time.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _ready():
	Random.counter = Random.counter +1
	get_node("a").text=str(Random.a)
	get_node("b").text=str(Random.b)
	get_node("c").text=str(Random.c)
	get_node("d").text=str(Random.d)
	get_node("A").text= str(Random.num1) + " + " + str(Random.num2) + " = ?"
func ifcorrect():
	if answer == correct_answer:
			get_node("B").text="Correct"
			get_node("A").text= str(Random.num1) + " + " + str(Random.num2) + " = "+ str(answer)
			Random.score=Random.score+10
			await get_tree().create_timer(1.0).timeout
			
			if Random.counter==10:
				await get_tree().create_timer(2.0).timeout
				Random.hp=3
				
				get_tree().change_scene_to_file("res://dod ode/GameOver.tscn")
			else:
				get_node("B").text=""
				Random.rand()
				get_tree().change_scene_to_file("res://dod ode/Task.tscn")
			
			
			
			
				
	else:
			get_node("B").text="Wrong"
			get_node("A").text= str(Random.num1) + " + " + str(Random.num2) + " = "+ str(answer)
			await get_tree().create_timer(1.0).timeout
			if Random.counter==10:
				await get_tree().create_timer(1.0).timeout
				Random.hp=3
				get_tree().change_scene_to_file("res://dod ode/GameOver.tscn")
			else:
				get_node("B").text=""
				Random.rand()
				get_tree().change_scene_to_file("res://dod ode/Task.tscn")
				get_node("A").text= str(Random.num1) + " + " + str(Random.num2) + " = ?"
		
func _on_a_pressed():
	answer = Random.a
	
	ifcorrect()
	


func _on_b_pressed():
	answer = Random.b
	ifcorrect()

func _on_c_pressed():
	answer = Random.c
	ifcorrect()



func _on_d_pressed():
	answer = Random.d
	ifcorrect()
	
#func new():
	#Random.rand()
	#get_node("a").text=str(Random.a)
#	get_node("b").text=str(Random.b)
	#get_node("c").text=str(Random.c)
	#get_node("d").text=str(Random.d)
	#get_node("A").text= str(Random.num1) + " + " + str(Random.num2) + " = ?"

