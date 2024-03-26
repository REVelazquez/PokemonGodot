extends Node2D

@onready var anim_player = $AnimationPlayer
@onready var stepped_grass = $SteppedGrass
@onready var effect = $AnimatedSprite2D
var player_inside: bool = false

func _on_area_2d_body_entered(body):
	player_inside = true
	anim_player.play('stepped')
	stepped_grass.visible = true
	effect.play('default')
	
	


func _on_area_2d_body_exited(body):
	player_inside = false
	stepped_grass.visible= false
