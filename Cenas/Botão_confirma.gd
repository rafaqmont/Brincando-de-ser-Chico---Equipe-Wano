extends Button
onready var botao_confirma=$"."
onready var sprite_bt_conf=$Sprite_confirma

func _process(delta):
	if(botao_confirma.is_hovered()==true):
		sprite_bt_conf.texture=load('res://Sprites/Botoes/bt_confirmar_hover.png')
	else:
		sprite_bt_conf.texture=load('res://Sprites/Botoes/bt_confirmar.png')
