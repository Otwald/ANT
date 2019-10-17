extends Node

class_name Root_Ant

var health
var max_stam
var stam
var colony
var home

func _ready():
	colony = self.get_parent().get_parent()

func _createAnt(stam : float, health, cost):
	self.health = health
	self.max_stam = stam
	self.stam = stam
	self.home = colony.orig_pos
	colony.food_update(-cost)