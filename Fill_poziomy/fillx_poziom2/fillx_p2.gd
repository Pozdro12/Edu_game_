extends Control
var liczba1
var liczba2
var dzialanie
var odpowiedz
var odpowiedzzla1
var odpowiedzzla2
var odpowiedzzla3
var odpowiedzi = [odpowiedz, odpowiedzzla1,odpowiedzzla2,odpowiedzzla3]
var zmienna
var wybrana_odpw
var wynik=0
var szansy=3
var wynik_dzial
@onready var gos=$przeg/Przegrana
@onready var wygr=$wygr/Wygrana

func _ready():
	_game()
	
func _process(delta):
	pass
	
func _game():
	
	gos.visible=false
	wygr.visible=false
	
	get_node("wynik").text=str(wynik)
	get_node("szansy").text="lives: "+str(szansy)
	
	liczba1=randi_range(1,25)
	liczba2=randi_range(1,25)
	
	dzialanie=randi_range(1,2)
	
	if dzialanie==1:
		wynik_dzial=liczba1+liczba2
		odpowiedz=liczba2
		odpowiedzzla1=odpowiedz+randi_range(6,12)
		odpowiedzzla2=odpowiedz-randi_range(1,6)
		odpowiedzzla3=odpowiedz+randi_range(3,5)
		odpowiedzi = [odpowiedz, odpowiedzzla1,odpowiedzzla2,odpowiedzzla3]
		$"TextureRect3".texture=ResourceLoader.load("res://fillx/+.png")
		
		get_node("liczba").text=str(liczba1)
		get_node("wynikRown").text=str(wynik_dzial)
		
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
	else:
		wynik_dzial=liczba1-liczba2
		odpowiedz=liczba2
		odpowiedzzla1=odpowiedz+randi_range(6,12)
		odpowiedzzla2=odpowiedz-randi_range(1,6)
		odpowiedzzla3=odpowiedz+randi_range(3,5)
		odpowiedzi = [odpowiedz, odpowiedzzla1,odpowiedzzla2,odpowiedzzla3]
		
		$"TextureRect3".texture=ResourceLoader.load("res://fillx/-.png")
		get_node("liczba").text=str(liczba1)
		get_node("wynikRown").text=str(wynik_dzial)
		
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
		if wynik == 10 :
			get_node("wynik").text=str(wynik)
			Globalny.poziom3_uzupelnianie=true
			Globalny.save()
			wygr.visible=true
		else:
			_game()
	else:
		szansy-=1
		if szansy==0:
			get_node("szansy").text="lives: "+str(szansy)
			gos.visible=true
		else:
			_game()
		



	
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
