extends Node

export (float) var food_level = 100
export (Vector2) var pos = Vector2(200, 200)

var objectType = 'food'


func _ready():
    self.position = pos
    self.connect('area_entered', self, 'updateRessource')

func updateRessource(body):
    if body.carry == false:
        food_level -= body.capacity
        body.carry = true
        print(body.carry)
        print(food_level)