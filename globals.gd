extends Node

var playerScore = 0
var playerHP = 100
var character_gender

var map_obtained
var mapChestVal
var mapChest
var maps
var chosenChest

var gems
var gem_index

var curStage
var curStageProg

var playerusername

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	maps = [false, false, false, false, false]
	gem_index = ["green_gem", "blue_gem", "gold_gem", "violet_gem", "red_gem"]
	gems = {
		"green_gem_counter": {"count": 0},
		"blue_gem_counter": {"count": 0},
		"gold_gem_counter": {"count": 0},
		"violet_gem_counter": {"count": 0},
		"red_gem_counter": {"count": 0},
	}
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass

func choose_random_chest(chests_node: Node) -> Node:
	randomize()
	var chest_index = randi() % 8 + 1
	var chosen_chest = chests_node.get_node("Chest%d" % chest_index)
	chosen_chest.isrelic = true
	return chosen_chest

func generate_random_lightbeam(lightbeams: Node) -> Node:
	randomize()
	var beam_index = randi() % 4 + 1
	var chosen_beam = lightbeams.get_node("lightbeam%d" % beam_index)
	chosen_beam.visible = true
	chosen_beam.get_node("Area2D/CollisionShape2D").disabled = false
	print(chosen_beam)
	return chosen_beam
	
func trigger_chest_opened(chests_node: Node): 
	for child in chests_node.get_children():
		var child_anim = child.get_node("AnimatedSprite2D")
		child_anim.play("opening")
		child_anim.stop()
		child_anim.frame = 4
		child.opened = true
		
func collectiblesCounter(item_type: String):
	var item_type_counter = item_type + "_counter"
	if gems.has(item_type_counter):
		gems[item_type_counter]["count"] += 1
		
func getGemCount(stage_num: int):
	return gems[gem_index[stage_num] + "_counter"]["count"]
	
func resetCurrentStage(stage_num: int):
	gems[gem_index[stage_num] + "_counter"]["count"] = 0
	maps[stage_num] = false
	playerHP = 100
	pass
	
func resetWholeGame():
	pass
	
