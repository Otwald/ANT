extends Node

class_name Root_Ant

var health
var max_stam
var stam
var colony

# export (PackedScene) var Worker_Ant

func _ready():
	colony = self.get_parent().get_parent()
	# var home = get_parent().orig_pos

func _createAnt(stam : float, health, cost):
	self.health = health
	self.max_stam = stam
	self.stam = stam
	colony.food = colony.food - cost
	print(colony.food)
	# self.food =self.food - cost