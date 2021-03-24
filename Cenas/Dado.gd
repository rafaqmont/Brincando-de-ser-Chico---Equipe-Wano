extends Node
# variáveis
onready var animacao_dado = $AnimatedSprite
onready var timer =$Timer
onready var timer2 =$Timer
var dado_pare =false
var numero=0
signal dado_rolado
var ok =false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if(numero-1==animacao_dado.frame and dado_pare==true):
		animacao_dado.stop()
		dado_pare=false
		
		if(ok==true):
			emit_signal("dado_rolado")
			ok=false
		

#funções criadas por mim
func dado_clicado():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var my_random_number = rng.randf_range(1.0, 6.0)
	numero =randi()%6+1
	numero=int(my_random_number)
	animacao_dado.play()
	timer.start()
	ok=true
func fim_timer():
	dado_pare=true
	

