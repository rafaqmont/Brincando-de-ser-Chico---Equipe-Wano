extends Button

onready var label =$Label_creditos
onready var botao_jogar=$"."

func _process(delta):
	if(botao_jogar.is_hovered()==true):
		label.text='<Créditos>'
	else:
		label.text= 'Créditos'
	
#func creditos_pressionado():
	#get_tree().change_scene("res://Cenas/creditos.tscn")
