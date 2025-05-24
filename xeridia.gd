extends Node2D

# Called when the node enters the scene tree for the first time.
var stage_num = 1
var isFinished = false
func _ready() -> void:
	var bgm_player = $xeridiabgm
	var bgm_stream = load("res://assets/sounds/xeridiabgsound.mp3")
	bgm_stream = bgm_stream.duplicate()
	bgm_stream.loop = true
	bgm_player.stream = bgm_stream
	bgm_player.play()
	
	randomize()
	Globals.curStage = stage_num - 1
	Globals.curStageProg = false
	Globals.choose_random_chest($Chests)
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var gemCounter = Globals.getGemCount(stage_num - 1)
	if Globals.map_obtained:
		Globals.trigger_chest_opened($Chests)
	if Globals.maps[stage_num - 1] == true and gemCounter >= 20: 
		if !isFinished:
			Globals.generate_random_lightbeam($lightbeams)
			isFinished = true
		Globals.curStageProg = true
