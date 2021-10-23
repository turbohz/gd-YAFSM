extends Node2D

func _ready():
	print("Test ready")
	yield($fsm, "entered")
	print("FSM entered")

func _on_fsm_entered(to):
	print("FSM _on_fsm_entered(%s)" % to)
	
	$fsm.set_trigger("proceed")
	
func _on_fsm_transited(_from, to):
	print("FSM transited to state: %s" % to)
