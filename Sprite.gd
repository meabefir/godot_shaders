extends Sprite

var shader = material as ShaderMaterial

onready var animation_player = $"../AnimationPlayer"

func _input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_F:
			animation_player.play("fade")
			
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _process(delta):
	pass


func _on_HScrollBar_value_changed(value):
	shader.set_shader_param("influence", value)
	shader.set_shader_param("offset", value / 1.5)
