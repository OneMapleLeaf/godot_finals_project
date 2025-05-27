extends Node2D

var current_line := 0
const TOTAL_LINES := 6
const NEXT_SCENE_PATH := "res://CutScene.tscn"

func _ready() -> void:
	if Entername.gender == 1:
		$MALE1.visible = true
	elif Entername.gender == 2:
		$FEMALE1.visible = true
	$nextBtn.pressed.connect(_on_next_pressed)

func _on_next_btn_pressed() -> void:
	pass # Replace with function body.

func _on_next_pressed():
	# Hide current line
	get_node("Line%d" % (current_line + 1)).visible = false
	current_line += 1
	
	if current_line < 6:
		get_node("Line%d" % (current_line + 1)).visible = true
	else:
		Globals.resetWholeGame()
		get_tree().change_scene_to_packed(SceneCache.cutscene_instance)
