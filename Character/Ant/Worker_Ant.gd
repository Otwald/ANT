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

func _process(delta):
	if self.path:
		self.followPath(delta)
	else:
		if carry:
			self.path = self.createPath(home)
			# aim = home
		else:
			var resLoc = ressources.get_children()
			if not resLoc.empty():
				self.path = self.createPath(resLoc[0])
				# aim = resLoc[0]
	# 	self.move(aim.position, delta)
