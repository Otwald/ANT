extends "res://StateMachine/State.gd"

var carry : bool = false

func update_process(machine, _delta):
	if carry:
		machine._change_state("carry")
	else:
		machine._change_state("search")


func flip_carry_flag():
	carry = !carry