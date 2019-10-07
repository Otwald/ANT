extends Node

class_name Root_Ant

export (PackedScene) var Worker_Ant

func _init():
	print('Bla')
	# var home = get_parent().orig_pos

func _createAnt(stam, health, cost):
	self.health = health
	self.max_stam = stam
	self.stam = stam
	self.food =self.food - cost

func _ready():
	var ant = Worker_Ant.instance()
	add_child_below_node(ant, $Ant, true)