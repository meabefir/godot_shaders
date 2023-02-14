extends Sprite

var shader = material as ShaderMaterial

var tex1 = load("res://assets/back.png")
var tex2 = load("res://assets/back2.png")

export(float) var mix = 0 setget set_mix

func set_mix(value):
	mix = value
	
	shader.set_shader_param("mix_factor", mix)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	pass

