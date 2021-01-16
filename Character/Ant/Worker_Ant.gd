extends "res://Character/Ant/Root_Ant.gd"

var stats = {
	'stam' : 100,
	'health': 50,
	'cost': 10,
	'speed': 50,
	'capacity': 20
}

func _ready():
	_createAnt(stats)
	print(self.grid)
