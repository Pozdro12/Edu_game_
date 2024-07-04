extends Node
var zapisywanie=false
var save_path="user://variable.save"

var poziom1_dodawanie=true
var poziom2_dodawanie=false
var poziom3_dodawanie=false

var poziom1_odejmowanie=true
var poziom2_odejmowanie=false
var poziom3_odejmowanie=false

var poziom1_mnozenie=true
var poziom2_mnozenie=false
var poziom3_mnozenie=false
var mnozenie_ukonczone=false

var poziom1_dzielenie=true
var poziom2_dzielenie=false
var poziom3_dzielenie=false
var dzielenie_ukonczone=false

var poziom1_uzupelnianie=true
var poziom2_uzupelnianie=false
var poziom3_uzupelnianie=false
var uzupelnianie_ukonczone=false

var geom_ukoncz=false

func save():
	if zapisywanie==true:
		var file = FileAccess.open(save_path, FileAccess.WRITE)
		file.store_var(poziom1_mnozenie)
		file.store_var(poziom2_mnozenie)
		file.store_var(poziom3_mnozenie)
		file.store_var(mnozenie_ukonczone)
		file.store_var(poziom1_dzielenie)
		file.store_var(poziom2_dzielenie)
		file.store_var(poziom3_dzielenie)
		file.store_var(dzielenie_ukonczone)
		file.store_var(poziom1_uzupelnianie)
		file.store_var(poziom2_uzupelnianie)
		file.store_var(poziom3_uzupelnianie)
		file.store_var(uzupelnianie_ukonczone)
		file.store_var(geom_ukoncz)
	
func load_data():
	if FileAccess.file_exists(save_path):
		var file=FileAccess.open(save_path, FileAccess.READ)
		poziom1_mnozenie=file.get_var(poziom1_mnozenie)
		poziom2_mnozenie=file.get_var(poziom2_mnozenie)
		poziom3_mnozenie=file.get_var(poziom3_mnozenie)
		mnozenie_ukonczone=file.get_var(mnozenie_ukonczone)
		poziom1_dzielenie=file.get_var(poziom1_dzielenie)
		poziom2_dzielenie=file.get_var(poziom2_dzielenie)
		poziom3_dzielenie=file.get_var(poziom3_dzielenie)
		dzielenie_ukonczone=file.get_var(dzielenie_ukonczone)
		poziom1_uzupelnianie=file.get_var(poziom1_uzupelnianie)
		poziom2_uzupelnianie=file.get_var(poziom2_uzupelnianie)
		poziom3_uzupelnianie=file.get_var(poziom3_uzupelnianie)
		uzupelnianie_ukonczone=file.get_var(uzupelnianie_ukonczone)
		geom_ukoncz=file.get_var(geom_ukoncz)
	else:
		print("nie ma pliku")
		poziom1_dodawanie=true
		poziom2_dodawanie=false
		poziom3_dodawanie=false
		poziom1_odejmowanie=true
		poziom2_odejmowanie=false
		poziom3_odejmowanie=false
		poziom1_mnozenie=true
		poziom2_mnozenie=false
		poziom3_mnozenie=false
		mnozenie_ukonczone=false
		poziom1_dzielenie=true
		poziom2_dzielenie=false
		poziom3_dzielenie=false
		dzielenie_ukonczone=false
		poziom1_uzupelnianie=true
		poziom2_uzupelnianie=false
		poziom3_uzupelnianie=false
		uzupelnianie_ukonczone=false
		geom_ukoncz=false
