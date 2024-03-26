extends Node2D

var nextScene = null

func _ready():
	pass # Replace with function body.


func transition_to_scene(new_scene:String):
	nextScene = new_scene
	$ScreenTransition/AnimationPlayer.play('FadeToBlack')
	
func finished_fading():
	$CurrentScene.get_child(0).queue_free()
	$CurrentScene.add_child(load(nextScene).instance())
	
	
	$ScreenTransition/AnimationPlayer.play('FadeToNormal')
