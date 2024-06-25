extends Control
var liczba1
var liczba2 
var odpowiedz
var odpowiedzzla1
var odpowiedzzla2
var odpowiedzzla3
var odpowiedzi = [odpowiedz, odpowiedzzla1,odpowiedzzla2,odpowiedzzla3]
var zmienna
var wybrana_odpw
var wynik=0
var szansy=3
@onready var gos=$przeg/Przegrana
@onready var wygr=$wygr/Wygrana

func _ready():
	_game()
	
func _process(delta):
	pass
	
func _game():
	gos.visible=false
	wygr.visible=false
	liczba1= randi_range(1,10)
	liczba2 = randi_range(1,10)
	odpowiedz=liczba1*liczba2
	odpowiedzzla1=odpowiedz+randi_range(6,12)
	odpowiedzzla2=odpowiedz-randi_range(1,6)
	odpowiedzzla3=odpowiedz+randi_range(3,5)
	odpowiedzi = [odpowiedz, odpowiedzzla1,odpowiedzzla2,odpowiedzzla3]
	
	wygrana()
	
	get_node("Liczba1").text=str(liczba1)
	get_node("Liczba2").text=str(liczba2)
	
	get_node("wynik").text=str(wynik)
	get_node("szansy").text="lives: "+str(szansy)
	
	zmienna=randi() % odpowiedzi.size()
	get_node("a").text=str(odpowiedzi[zmienna])
	odpowiedzi.remove_at(zmienna)
	zmienna=randi() % odpowiedzi.size()
	get_node("b").text=str(odpowiedzi[zmienna])
	odpowiedzi.remove_at(zmienna)
	zmienna=randi() % odpowiedzi.size()
	get_node("c").text=str(odpowiedzi[zmienna])
	odpowiedzi.remove_at(zmienna)
	zmienna=randi() % odpowiedzi.size()
	get_node("d").text=str(odpowiedzi[zmienna])
	odpowiedzi.remove_at(zmienna)
	
func sprwdz():
	if int(wybrana_odpw) == int(odpowiedz):
		wynik+=1
		_game()
	else:
		szansy-=1
		if szansy==0:
			get_node("szansy").text="lives: "+str(szansy)
			gos.visible=true
		else:
			_game()
		


func wygrana():
	if wynik == 10 :
		Globalny.poziom3_mnozenie=true
		Globalny.save()
		wygr.visible=true
	
func _on_b_pressed():
	print("b")
	wybrana_odpw = get_node("b").text
	sprwdz()

func _on_c_pressed():
	print("c")
	wybrana_odpw = get_node("c").text
	sprwdz()

func _on_d_pressed():
	print("d")
	wybrana_odpw = get_node("d").text
	sprwdz()

func _on_a_pressed():
	print("a")
	wybrana_odpw = get_node("a").text
	sprwdz()
