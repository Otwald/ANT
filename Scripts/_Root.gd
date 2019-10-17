extends Node

var scene = 'Worker_Ant'

func _ready():
	$Hud_Root.get_node('Output').text = "Food :" + str($Colony.food)
	init_Ant(scene)
	init_Ant(scene)

func init_Ant(scene):
	var ant_ressources = load("res://Scenes/" + scene + ".tscn")
	var ant = ant_ressources.instance()
	$Colony.get_node('Ant').add_child(ant, true)