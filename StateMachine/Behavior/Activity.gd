extends "res://StateMachine/State.gd"
class_name Activity

#Array or Null
onready var grid = get_node('/root/_Root/navigation_map')
onready var body : KinematicBody2D = get_parent().get_parent()

func exit(_machine):
	self.brain.get_node("Think").flip_carry_flag()

func createPath(end : Vector2):
	var body_pos : Vector2 = body.global_position
	return grid.get_pathf(body_pos, end)

func update_process(machine, _delta):
	if not self.body.path:
		machine._change_state("previous")