extends Node2D
	
var current_line := 0
const TOTAL_LINES := 6
const NEXT_SCENE_PATH := "res://spaceship.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Entername.gender == 1:
		$MALE1.visible = true
		print("male appear")
	elif Entername.gender == 2:
		$FEMALE1.visible = true
		print("female appear")
	$nextBtn.pressed.connect(_on_next_pressed)
	
func _on_next_pressed():
	# Hide current line
	get_node("Line%d" % (current_line + 1)).visible = false
	current_line += 1
	
	if current_line < 6:
		get_node("Line%d" % (current_line + 1)).visible = true
	else:
		get_tree().change_scene_to_file(NEXT_SCENE_PATH)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
