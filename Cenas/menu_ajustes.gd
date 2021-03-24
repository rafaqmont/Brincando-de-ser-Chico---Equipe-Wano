extends Button

onready var label =$Label_ajustes
onready var botao_jogar=$"."

func _process(delta):
	if(botao_jogar.is_hovered()==true):
		label.text='<Ajustes>'
	else:
		label.text= 'Ajustes'
	
#func ajustes_pressionado():
	#get_tree().change_scene("res://Cenas/ajustes.tscn")
