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
onready var grid = get_node('/root/_Root/navigation_map')
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

func updateAnt(body):
	print('oh no collision')
	if body.objectType == 'ant':
		print(body.health)
	if body.objectType == 'food':
		self.path = null