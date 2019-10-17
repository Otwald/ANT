extends Node

var scene = 'Worker_Ant'

func _ready():
	$Colony.connect('update_food', self, "output_update")
	ressource_Loader(scene, 'ant')
	ressource_Loader(scene, 'ant')


func ressource_Loader(scene, case):
	var ressource_scene = load("res://Scenes/" + scene + ".tscn")
	var node_scene = ressource_scene.instance()
	match case:
		'ant':
			$Colony.get_node('Ant').add_child(node_scene, true)
		'food':
			$Ressources.add_child(node_scene,true)

func init_food(scene):
	$Colony.get_node('Ant').add_child(ant, true)

func output_update():
	$Hud_Root.get_node('Output').text = "Food :" + str($Colony.food)
