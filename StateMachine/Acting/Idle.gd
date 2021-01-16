extends "res://StateMachine/Acting/ActingBaseState.gd"

func update_process(machine, _delta):
    if self.body.path:
        machine._change_state("walk")