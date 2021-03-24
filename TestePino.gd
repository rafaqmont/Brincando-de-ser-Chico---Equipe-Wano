extends Node

onready var pino =$Sprite
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pino.position.x+=1


func _on_TextureButton_button_up():
	print("oi")
