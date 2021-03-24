extends Node2D
onready var quiz=$"."
onready var pergunta=$Label
onready var botao1=$Button1
onready var botao2=$Button2
onready var botao3=$Button3
onready var timer =$Timer
onready var label_bt_1=$Button1/label_bt1
onready var label_bt_2=$Button2/label_bt2
onready var label_bt_3=$Button3/label_bt3
onready var sprite_bt1=$Button1/sprite_bt1
onready var sprite_bt2=$Button2/sprite_bt2
onready var sprite_bt3=$Button3/sprite_bt3
onready var botao_confirma =$"Botão_confirma"
onready var sprite_bt_conf =$"Botão_confirma/Sprite_confirma"
var correta =0
var fica_invisivel=false
var botao_pressionado=0
var inicia_timer=false
signal resposta_errada
var perguntas=['Onde nasceu Chico da Silva?','Em que ano nasceu Chico da Silva?','Chico da Silva é um:',
'Como ele aprendeu a pintar?','Quais dos seguintes fenômenos NÃO estão ligados ao aspecto da migração marcado na vida do artista?',
'Quais foram os principais estilos artísticos que Chico da Silva representava?','Qual dos seguintes elementos Chico da Silva NÃO utilizava em suas pinturas:',
'Qual prêmio o artista recebeu em 1966?','Em 2020 Chico da Silva recebeu alguma homenagem?','Quais as duas fases artísticas do artista?']

var resposta1=['Fortaleza, Ceará.','1910.','Escritor','Academia Real de pintura','O fenômeno da seca',
'O Primitivismo e a arte Naif.','Animais e elementos que remetem as lendas','Menção honrosa da bienal de Veneza',
'Sim, pelo seu 100º aniversário','Individual e escola do pirambu.']
var resposta2=[' Alto Tejo, Acre','1970','Pintor','Aprendeu sozinho','Processos de segregação na cidade','  O cubismo e o Dadaísmo',
'A vida amazônica e a nordestina','Prêmio Nobel da Paz','Sim, pelo seu 110º aniversário','Escola do pirambu e tropicalismo']
var resposta3=['Caucaia, Ceará','1930.','Carpinteiro','Escola de Belas artes','Urbanização rural','O surrealismo e o Futurismo',
'A desigualdade social e elementos urbanos','Grammy Awards','Não, ele não recebeu homenagem','Individual e tropicalismo.']
var resposta_correta=[2,1,2,2,3,1,3,1,1,1]
var modais=[perguntas,resposta1,resposta2,resposta3,resposta_correta]
func _ready():
	pass
func _process(delta):
	pass		
func abre_quiz():
	quiz.visible=true
	sprite_bt1.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	sprite_bt2.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	sprite_bt3.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
func botao1_clicado():
	botao_pressionado=1
	sprite_bt1.texture = load('res://Sprites/Botoes/op_quiz_selecionado.png')
	sprite_bt2.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	sprite_bt3.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	
func botao2_clicado():
	botao_pressionado=2
	sprite_bt2.texture = load('res://Sprites/Botoes/op_quiz_selecionado.png')
	sprite_bt1.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	sprite_bt3.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
func botao3_clicado():
	botao_pressionado=3
	sprite_bt3.texture = load('res://Sprites/Botoes/op_quiz_selecionado.png')
	sprite_bt1.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	sprite_bt2.texture = load('res://Sprites/Botoes/bt_quiz_padrao.png')
	

func _on_Pino_oi(valor):
	pergunta.text=modais[0][valor]
	label_bt_1.text=modais[1][valor]
	label_bt_2.text=modais[2][valor]
	label_bt_3.text=modais[3][valor]
	correta=valor
func confirmacao():
	if(botao_pressionado!=0):
		inicia_timer=true
		timer.start()
	if(botao_pressionado==modais[4][correta]):
		match botao_pressionado:
			1:
				sprite_bt1.texture=load('res://Sprites/Botoes/op_selecionado_correta.png')
			2:
				sprite_bt2.texture=load('res://Sprites/Botoes/op_selecionado_correta.png')
			3:
				sprite_bt3.texture=load('res://Sprites/Botoes/op_selecionado_correta.png')
	if(botao_pressionado!=0 and botao_pressionado!=modais[4][correta]):
		match botao_pressionado:
			1:
				sprite_bt1.texture=load('res://Sprites/Botoes/op_selecionado_errada.png')
			2:
				sprite_bt2.texture=load('res://Sprites/Botoes/op_selecionado_errada.png')
			3:
				sprite_bt3.texture=load('res://Sprites/Botoes/op_selecionado_errada.png')
		match modais[4][correta]:
			1:
				sprite_bt1.texture=load('res://Sprites/Botoes/op_correta.png')
			2:
				sprite_bt2.texture=load('res://Sprites/Botoes/op_correta.png')
			3:
				sprite_bt3.texture=load('res://Sprites/Botoes/op_correta.png')
		emit_signal("resposta_errada")
func fim_timer():
	if(inicia_timer==true && botao_pressionado!=0):
		quiz.visible=false
		inicia_timer=false
		botao_pressionado=0
