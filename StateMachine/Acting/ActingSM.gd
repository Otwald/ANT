extends StateMachine



onready var local_states = {
	'idle' : $Idle,
	'walk': $Walk,
}

func _ready():
	self.states_map = local_states
	current_state = $Idle
	_change_state('idle')
