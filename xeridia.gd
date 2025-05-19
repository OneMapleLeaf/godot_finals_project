extends Node2D

# Called when the node enters the scene tree for the first time.
var extraction
var stage_num = 1
func _ready() -> void:
	randomize()
	Globals.curStageProg = false
	Globals.choose_random_chest($Chests)
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.map_obtained:
		Globals.trigger_chest_opened($Chests)
	if Globals.maps[stage_num - 1] == true:
		Globals.curStageProg = true
		Globals.generate_random_lightbeam($lightbeams)
