extends Node

func _ready():
	$Hud_Root.get_node('Output').text = "Food :" + str($Colony.food)
