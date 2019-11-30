extends "Root_Ant.gd"

var aim = null
var speed = 10

func _ready():
    _createAnt(100, 50, 10)

func _process(delta):
    var velocity = Vector2()
    if aim == null:
        aim = ressources.get_node('Food').position
    else:
        if self.position.x < aim.x:
            velocity.x += 1
        if self.position.y < aim.y:
            velocity.y += 1
        if self.position.x > aim.x:
            velocity.x -= 1
        if self.position.x > aim.x:
            velocity.x -= 1
        if velocity.length() > 0:
            velocity = velocity.normalized() * speed
        
        self.position += velocity * delta