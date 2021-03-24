extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var sprite= $Sprite
onready var animacao_dado = $AnimatedSprite
var numero =0
var dado_pare =false
onready var timer =$Timer
export var prop = "a"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("oi")
	print(prop)
	if(numero-1==animacao_dado.frame and dado_pare==true):
		animacao_dado.stop()
		dado_pare=false
	

func _on_TextureButton_button_up():
	numero =randi()%6+1
	animacao_dado.play()
	timer.start()

func _on_Timer_timeout():
	dado_pare=true
	
		
	
	
