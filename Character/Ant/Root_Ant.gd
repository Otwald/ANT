extends Node

class_name Root_Ant

# signal area_entered(body)
const POINT_RADIUS = 5

var objectType = 'ant'
var health
var max_stam
var stam
var home
var speed
var capacity
var carry = false
onready var grid = get_node('/root/_Root/nagivation_map')
onready var ressources = get_node('/root/_Root/Ressources')
onready var colony = get_node('/root/_Root/Colony')

var path = null

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
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	self.position += velocity * delta


func updateAnt(body):
	print('oh no collision')
	if body.objectType == 'ant':
		print(body.health)
	if body.objectType == 'food':
		self.path = null

func followPath(delta):
	var target = path[0]
	var direction = (target - self.position).normalized()
	
	self.position += direction * self.speed * delta
	if self.position.distance_to(target) < POINT_RADIUS:
		self.path.remove(0)
		if self.path.size() == 0:
			self.path = null

func createPath(end):
	return grid.get_pathf(self.position, end.position)
