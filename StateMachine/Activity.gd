extends "res://StateMachine/State.gd"
class_name Activity

#Array or Null
onready var grid = get_node('/root/_Root/navigation_map')
onready var body_pos : Vector2 = get_parent().get_parent().global_position
onready var path = get_parent().get_parent().path

func exit(_machine):
	self.brain.get_node("Think").flip_carry_flag()

func createPath(end : Vector2):
	return grid.get_pathf(body_pos, end)
