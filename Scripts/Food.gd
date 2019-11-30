extends Area2D

export (float) var food_level = 40

onready var parent = self.get_parent()
var objectType = 'food'
signal depleted


func _ready():
    parent.childs.push_back(self)
    self.position = parent.getPos()
    print(self.position)
    self.connect('area_entered', self, 'updateRessource')
    self.connect('tree_exiting', self, 'deleteRessource')

func updateRessource(body):
    if body.objectType == 'ant':
        if body.carry == false:
            food_level -= body.capacity
            body.carry = true

    if food_level <= 0:
        emit_signal('depleted')
        self.queue_free()

func deleteRessource():
    parent.childs.erase(self)