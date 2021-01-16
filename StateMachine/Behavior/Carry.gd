extends "res://StateMachine/Behavior/Activity.gd"


func enter(_machine):
	self.body.path = self.createPath(self.brain.home.position)
