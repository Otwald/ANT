extends Node

class_name Colony

signal update_food

export (Vector2) var orig_pos
export (int) var food

func _init():
    food = 100

func food_update(change : float ):
    self.food = self.food + change
    emit_signal("update_food")