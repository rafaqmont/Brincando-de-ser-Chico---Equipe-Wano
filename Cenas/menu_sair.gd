extends Button

onready var label =$Label_sair
onready var botao_jogar=$"."

func _process(delta):
	if(botao_jogar.is_hovered()==true):
		label.text='<Sair>'
	else:
		label.text= 'Sair'
	
#func sair_pressionado():
	#get_tree().change_scene("res://Cenas/sair.tscn")
