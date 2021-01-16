extends "res://StateMachine/Acting/ActingBaseState.gd"

func update_process(machine, delta):
	var position = self.body.global_position
	var target = self.body.path[0]
	var direction = (target - position).normalized()
	
	self.body.global_position += direction * self.body.speed * delta
	if position.distance_to(target) < self.POINT_RADIUS:
		self.body.path.remove(0)
		if self.body.path.size() == 0:
			machine._change_state("previous")

func exit(_machine):
	self.body.path = null

# func move(aim, delta):
# 	var velocity = Vector2()
# 	if self.position.x < aim.x:
# 		velocity.x += 1
# 	if self.position.y < aim.y:
# 		velocity.y += 1
# 	if self.position.x > aim.x:
# 		velocity.x -= 1
# 	if self.position.y > aim.y:
# 		velocity.y -= 1
# 	if velocity.length() > 0:
# 		velocity = velocity.normalized() * self.speed

# 	self.position += velocity * delta
