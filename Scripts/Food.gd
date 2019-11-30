extends Node

export (float) var food_level = 100
export (Vector2) var pos

func _init():
    self.transform.position = pos

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
