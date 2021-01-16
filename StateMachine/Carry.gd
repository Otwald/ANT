extends "res://StateMachine/Activity.gd"


func enter(_machine):
	self.path = self.brain.createPath(self.brain.home.position)
