extends "res://StateMachine/Activity.gd"
class_name Search


func enter(_machine):
	var resLoc = self.brain.ressources.get_children()
	if not resLoc.empty():
		self.path = self.createPath(resLoc[0].position)
