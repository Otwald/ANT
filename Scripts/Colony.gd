extends Node

class_name Colony

signal update_food

export (Vector2) var orig_pos
export (int) var food

var objectType = 'colony'

func _init():
    food = 100
    self.connect('area_entered', self, 'updateColony')

func food_update(change : float ):
    self.food = self.food + change
    emit_signal("update_food")


func updateColony(body):
    if body.objectType == 'ant':
        body.carry = false
        body.aim = null
        food_update(body.capacity)
