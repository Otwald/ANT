extends Node

class_name Root_Ant

var health
var max_stam
var stam
var home
var speed
onready var ressources = get_node('/root/_Root/Ressources')
onready var colony = get_node('/root/_Root/Colony')

func _createAnt(stats):
    self.health = stats.health
    self.max_stam = stats.stam
    self.stam = stats.stam
    self.home = colony.orig_pos
    self.speed = stats.speed
    colony.food_update(-stats.cost)

func move(aim, delta):
    var velocity = Vector2()
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