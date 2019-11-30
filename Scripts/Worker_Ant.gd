extends "Root_Ant.gd"

var aim = null
var stats = {
    'stam' : 100,
    'health': 50,
    'cost': 10,
    'speed': 10,
    'capacity': 20
}

func _ready():
    _createAnt(stats)

func _process(delta):
    if aim == null:
        aim = ressources.get_node('Food')
    else:
        self.move(aim.position, delta)