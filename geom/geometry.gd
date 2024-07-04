extends Control
@onready var gos=$przeg/Przegrana
@onready var wygr=$wygr/Wygrana
var cos1
var zmienna
var zmiennainna
var endgame=false
var tab=[1,2,3,4,5,6]
var wynik=0
var szansy=3

# Called when the node enters the scene tree for the first time.
func _ready():
	_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_line_edit_text_submitted(new_text):
	if !endgame:
		cos1=$LineEdit.text
		check()
		$LineEdit.clear()

func _game():
	gos.visible=false
	wygr.visible=false
	
	get_node("wynik").text=str(wynik)
	get_node("szansy").text="lives: "+str(szansy)
	
	zmiennainna=(randi() % tab.size())
	zmienna=tab[zmiennainna]

	match zmienna:
		1:
			$geom.texture=ResourceLoader.load("res://geom/elipsa.png")
			
		2:
			$geom.texture=ResourceLoader.load("res://geom/kolko.png")
			
		3:
			$geom.texture=ResourceLoader.load("res://geom/kwadrat.png")
			
		4:
			$geom.texture=ResourceLoader.load("res://geom/pieciokat.png")
			
		5:
			$geom.texture=ResourceLoader.load("res://geom/szesciokat.png")
			
		6:
			$geom.texture=ResourceLoader.load("res://geom/trojkat.png")
func check():
	match zmienna:
		1:
			if cos1.to_lower() == "ellipse":
				wynik+=1
				tab.remove_at(zmiennainna)
			else:
				szansy-=1
		2:
			if cos1.to_lower() == "circle":
				wynik+=1
				tab.remove_at(zmiennainna)
			else:
				szansy-=1
		3:
			if cos1.to_lower() == "square":
				wynik+=1
				tab.remove_at(zmiennainna)
			else:
				szansy-=1
		4:
			if cos1.to_lower() == "pentagon":
				wynik+=1
				tab.remove_at(zmiennainna)
			else:
				szansy-=1
		5:
			if cos1.to_lower() == "hexagon":
				wynik+=1
				tab.remove_at(zmiennainna)
			else:
				szansy-=1
		6:
			if cos1.to_lower() == "triangle":
				wynik+=1
				tab.remove_at(zmiennainna)
			else:
				szansy-=1
	print(wynik)
	sprwdzWyg()
	if !endgame:
		sprwdzPrzg()

func sprwdzWyg():
	if wynik == 6 :
		get_node("wynik").text=str(wynik)
		endgame=true
		Globalny.geom_ukoncz=true
		Globalny.save()
		wygr.visible=true

func sprwdzPrzg():
	if szansy == 0:
		get_node("szansy").text="lives: "+str(szansy)
		endgame=true
		gos.visible=true
	else:
		_game()

