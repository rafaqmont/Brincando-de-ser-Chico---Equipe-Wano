extends Node
onready var pino= $Pino_sprite
onready var dado = $"../Dado"
onready var quiz = $"../Quiz"
signal abre_quiz
signal oi(valor)
var numero= 0
var casa =0
var timer_pode = false
var chamada=0

var vetor = [0]
var posicoesX_casa=[167, 247, 247, 247, 247, 247, 327, 
407, 407, 487,567,567,567,567,487,407,407,407,487,567,647,
727,727,727,727,807,887,887,887,967]    
var posicoesY_casa=[172,172,252,332,412,492,492,492,572,
572,572,492,412,332,332,332,252,172,172,172,172,172,252,332,412,412,412,332,252,252]

func _ready():
	pino.position.x=192
	pino.position.y=222

func _process(delta):
	pino.position.x=posicoesX_casa[casa];
	pino.position.y=posicoesY_casa[casa];
	match casa:
		2:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",0)
		4:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",1)
		7:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",2)
		11:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",3)
		14:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",4)
		17:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",5)
		18:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",6)
		21:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",7)
		23:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",8)
		28:
			if(chamada==0):
				emit_signal("abre_quiz")
				chamada=1
			emit_signal("oi",9)


func dado_rolado():
	var cont =0
	numero=dado.numero
	casa+=numero
	chamada=0
#condição para não passar de 29 pois a casa 29, contadas a partir do 0, é a casa final
	if(casa>29):
		casa=29
	vetor.append(casa)
	print(vetor)
	#mudar condição de erro
func erro():
	vetor.remove(vetor.size()-1)
	casa=vetor[vetor.size()-1]
	vetor.append(casa)
func resposta_errada():
	erro()
