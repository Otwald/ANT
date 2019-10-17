extends Node

var scene = 'Worker_Ant'

func _ready():
	$Colony.connect('update_food', self, "output_update")
	init_Ant(scene)
	init_Ant(scene)

func init_Ant(scene):
	var ant_ressources = load("res://Scenes/" + scene + ".tscn")
	var ant = ant_ressources.instance()
	$Colony.get_node('Ant').add_child(ant, true)

func output_update():
	$Hud_Root.get_node('Output').text = "Food :" + str($Colony.food)
