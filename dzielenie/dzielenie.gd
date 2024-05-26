extends Control
var liczba
var dzielnikuzywany
var odpowiedz
var odpowiedzzla1
var odpowiedzzla2
var odpowiedzzla3
var dzielniki=[]
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
	
	liczba= randi_range(1,100)
	dzielnikifunc(liczba)
	print(liczba)
	print(dzielniki)
	dzielnikuzywany=dzielniki[randi()%dzielniki.size()]
	
	get_node("liczba1").text=str(liczba)
	get_node("liczba2").text=str(dzielnikuzywany)
	
	odpowiedz=liczba/dzielnikuzywany
	odpowiedzzla1=odpowiedz+randi_range(6,12)
	odpowiedzzla2=odpowiedz-randi_range(1,6)
	odpowiedzzla3=odpowiedz+randi_range(3,5)
	odpowiedzi = [odpowiedz, odpowiedzzla1,odpowiedzzla2,odpowiedzzla3]
	
	wygrana()
	
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
		wygr.visible=true
	
func _on_b_pressed():
	wybrana_odpw = get_node("b").text
	sprwdz()

func _on_c_pressed():
	wybrana_odpw = get_node("c").text
	sprwdz()

func _on_d_pressed():
	wybrana_odpw = get_node("d").text
	sprwdz()

func _on_a_pressed():
	wybrana_odpw = get_node("a").text
	sprwdz()

func dzielnikifunc(n):
	dzielniki.clear()
	for i in range(1, n+1): 
		if (n % i == 0): 
			dzielniki.append(i)
