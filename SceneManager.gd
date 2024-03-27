extends Node2D
@onready var color_rect = $ScreenTransition/ColorRect

var nextScene = null

func _ready():
	color_rect.visible = false


func transition_to_scene(new_scene:String):
	color_rect.visible = true
	nextScene = new_scene
	$ScreenTransition/AnimationPlayer.play('FadeToBlack')
	color_rect.visible = false
	
func finished_fading():
	color_rect.visible = true
	$CurrentScene.get_child(0).queue_free()
	$CurrentScene.add_child(load(nextScene).instance())
	
	
	$ScreenTransition/AnimationPlayer.play('FadeToNormal')
	color_rect.visible = false
