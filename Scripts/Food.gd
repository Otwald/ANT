extends Node

export (float) var food_level = 100
export (Vector2) var pos = Vector2(200, 200)

# func _init():
#     self.transform.position = pos

func _ready():
    self.position = pos
    print(self.position)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
