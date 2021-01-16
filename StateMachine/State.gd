extends Node
class_name State

onready var parent : Node = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func enter(_machine):
	pass

func update_process(_machine, _delta):
	pass

func exit(_machine):
	pass
