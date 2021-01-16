extends Node

onready var childs : Array
var rng = RandomNumberGenerator.new()

func _init():
    rng.randomize()

func _process(_delta):
    # print(self.get_viewport_rect())
    if childs.empty():
        self.get_parent().ressource_Loader('Food','food')
        print(childs)


func getPos():
    # print(Vector2(clamp(rand_range(0, 1920),0,screen_size.x), clamp(rand_range(0, 1080),0, screen_size.y)))
    return Vector2(rng.randi_range(0, 1024), rng.randi_range(0, 600))