extends Button
onready var label =$Label_jogar
onready var botao_jogar=$"."

func _process(delta):
	if(botao_jogar.is_hovered()==true):
		label.text='<Jogar>'
	else:
		label.text= 'Jogar'


func jogar_pressionado():
	get_tree().change_scene("res://Cenas/Main.tscn")
