extends Button

onready var label =$"Label_intruções"
onready var botao_jogar=$"."

func _process(delta):
	if(botao_jogar.is_hovered()==true):
		label.text='<Instruções>'
	else:
		label.text= 'Instruções'
func jogar_pressionado():
	get_tree().change_scene("res://Cenas/Jogo_principal.tscn")

#func instrucoes_pressionado():
	#get_tree().change_scene("res://Cenas/instrucoes.tscn")
