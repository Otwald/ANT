extends "res://StateMachine/Behavior/Activity.gd"


func enter(_machine):
	self.path = self.brain.createPath(self.brain.home.position)
