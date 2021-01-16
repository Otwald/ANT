extends "res://StateMachine/StateMachine.gd"
class_name BehaviorSM

onready var ressources : Node = get_node('/root/_Root/Ressources')
onready var home : Area2D = get_node('/root/_Root/Colony')

onready var local_states = {
	'think' : $Think,
	'carry': $Carry,
	'search': $Search
}

func _ready():
	self.states_map = local_states
	current_state = $Think
	_change_state('think')
