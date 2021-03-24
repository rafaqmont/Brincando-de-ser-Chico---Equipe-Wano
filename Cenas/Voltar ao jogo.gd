extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func voltar_ao_jogo():
	get_tree().change_scene("res://Cenas/MainGame.tscn")


func ir_para_menu():
	get_tree().change_scene("res://Cenas/Menu.tscn")
