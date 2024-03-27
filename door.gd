extends Area2D
@onready var sprite = $Sprite2D
@onready var animation_player = $AnimationPlayer
@export_file("*.tscn") var new_scene : String 


# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.visible= false

func _on_player_entering_door():
	animation_player.play('OpenDoor')

func _on_player_player_entered_door():
	animation_player.play('CloseDoor')
	
func door_closed():
	get_node(NodePath('/root/SceneManager')).transition_to_scene(new_scene)
