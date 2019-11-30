extends Node

class_name Root_Ant

# signal area_entered(body)

var aim = null
var objectType = 'ant'
var health
var max_stam
var stam
var home
var speed
var capacity
var carry = false
onready var ressources = get_node('/root/_Root/Ressources')
onready var colony = get_node('/root/_Root/Colony')

func _createAnt(stats):
    self.health = stats.health
    self.max_stam = stats.stam
    self.stam = stats.stam
    self.home = colony
    self.speed = stats.speed
    self.capacity = stats.capacity
    colony.food_update(-stats.cost)
    self.connect('area_entered', self, "updateAnt")


func move(aim, delta):
    var velocity = Vector2()
    if self.position.x < aim.x:
        velocity.x += 1
    if self.position.y < aim.y:
        velocity.y += 1
    if self.position.x > aim.x:
        velocity.x -= 1
    if self.position.y > aim.y:
        velocity.x -= 1
    if velocity.length() > 0:
        velocity = velocity.normalized() * speed
    
    self.position += velocity * delta


func updateAnt(body):
    print('oh no collision')
    if body.objectType == 'ant':
        print(body.health)
    if body.objectType == 'food':
        aim = null