extends "Root_Ant.gd"

var stats = {
    'stam' : 100,
    'health': 50,
    'cost': 10,
    'speed': 50,
    'capacity': 20
}

func _ready():
    _createAnt(stats)

func _process(delta):
    if aim == null:
        if carry:
            aim = home
        else:
            var resLoc = ressources.get_children()
            if not resLoc.empty():
                aim = resLoc[0]
    else:
        self.move(aim.position, delta)