extends Sprite2D


# Called when the node enters the scene tree for the first time.
var map
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	checkStage()
	if Globals.map_obtained:
		unlockMap()


func _on_touchscreenbuttonx_pressed() -> void:
	$".".visible = false
	Globals.map_obtained = false

func unlockMap():
	var stage_paths = {
		"res://xeridia.tscn": {"map_num": 0},
		"res://Nexar.tscn": {"map_num": 1},
		"res://valtania.tscn": {"map_num": 2},
		"res://Astria.tscn": {"map_num": 3},
		"res://ZORVATH.tscn": {"map_num": 4},
	}
	var path = get_tree().current_scene.scene_file_path
	if stage_paths.has(path):
		var index = stage_paths[path]
		Globals.maps[index["map_num"]] = true
		
		
	
func checkStage():
	var maps = [$map1, $map2, $map3, $map4, $map5]
	var stage_paths = {
		"res://xeridia.tscn": {"map": $map1, "anim": "map1"},
		"res://Nexar.tscn": {"map": $map2, "anim": "map2"},
		"res://Valtania.tscn": {"map": $map3, "anim": "map3"},
		"res://Astria.tscn": {"map": $map4, "anim": "map4"},
		"res://ZORVATH.tscn": {"map": $map5, "anim": "map4"},
	}
	
	for map in maps:
		map.visible = false
	
	var path = get_tree().current_scene.scene_file_path
	if stage_paths.has(path):
		var entry = stage_paths[path]
		entry["map"].visible = true
		$AnimatedSprite2D.play(entry["anim"])
