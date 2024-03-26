extends AnimatedSprite2D
@onready var landing_dust_effect = $"."


# Called when the node enters the scene tree for the first time.
func _ready():
	landing_dust_effect.visible = false

func _on_animation_finished():
	landing_dust_effect.visible = false
	pass # Replace with function body.
