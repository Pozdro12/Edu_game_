extends Node
var rng = RandomNumberGenerator.new()
var num1 
var num2
var a
var b
var c
var d
var k
var score=0
var hp=3
var counter=0

# Called when the node enters the scene tree for the first time.
func _ready():
	rand()

func rand():
	num1 = rng.randi_range(1,9)	
	num2 = rng.randi_range(1,9)	
	k=rng.randi_range(1,4)	
	if k ==1:
		a = num1+num2
		b= num1+num2+3
		c= num1+num2-2
		d=(num1*3)/2
		
	elif k ==2:
		a = num1+num2+2
		b = num1+num2
		c= num1+num2-1
		d=num1+num2-3
	elif k ==3:
		a = num1+num2-1
		b = num1+num2+4
		c= num1+num2
		d=num1+num2-2
	elif k ==4:
		a = num1+num2+1
		b = num1+num2-2
		c= num1+num2+3
		d = num1+num2
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
