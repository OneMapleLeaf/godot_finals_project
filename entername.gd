extends Node2D

var femaleselected = false
var maleselected = false
var gender
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_touchscreenstart_pressed() -> void:
	var username = $TextEdit.text.strip_edges()
	var has_username = username != ""
	var has_character = $selectionmale.visible or $selectionfemale.visible
	if has_username and has_character:
		get_tree().change_scene_to_file("res://dialogue.tscn")
		
	if has_username:
		$unamevalidation.visible = false
	else:
		$unamevalidation.visible = true
		
	if has_character:
		$charvalidation.visible = false
	else:
		$charvalidation.visible = true
		


func _on_touchscreenmale_pressed() -> void:
	Entername.gender = 1
	Globals.character_gender = "male"
	print("male")
	if $selectionfemale.visible == false:
		$selectionmale.visible = true
		
	if $selectionfemale.visible == true:
		$selectionmale.visible = true
		$selectionfemale.visible = false


func _on_touchscreenfemale_pressed() -> void:
	Entername.gender = 2
	Globals.character_gender = "female"
	print("female")
	if $selectionmale.visible == false:
		$selectionfemale.visible = true
	if $selectionmale.visible == true:
		$selectionfemale.visible = true
		$selectionmale.visible = false
