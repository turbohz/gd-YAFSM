# GdUnit generated TestSuite
class_name GameSpyTest
extends GdUnitTestSuite

# TestSuite generated from
const __source = 'res://examples/simple.gd'

# enable only for visualisize the spy_scene steps
var _debug_wait = true

var spy_scene

func before():
	# using 'before()' to create only once the spy_scene at beginning of test suite run
	var scene_instance = load("res://examples/simple.tscn").instance()
	# create a spy on this spy_scene instance
	spy_scene = spy(scene_instance)

func before_test():
	# reset previous recoreded interactions on this mock for each test
	reset(spy_scene)

func test_game_scene_spyed():
	scene_runner(spy_scene)
	
func test_fms_reaches_entry_state():
	var _scene_runner := scene_runner(spy_scene)
	var fsm = spy(spy_scene.get_node("fsm"))
	fsm.start()
	verify(fsm, 1).emit_signal("entered", "")
#	verify(fsm, 1).emit_signal("foo", "")
	
	
	
