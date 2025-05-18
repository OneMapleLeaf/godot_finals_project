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
	if $TextEdit.text != "" and $selectionmale.visible == true or $selectionfemale.visible == true:
		get_tree().change_scene_to_file("res://dialogue.tscn")
	if $TextEdit.text == "":
		$unamevalidation.visible = true
	else:
		$unamevalidation.visible = false
		
	if $selectionmale.visible == false and $selectionfemale.visible == false:
		$charvalidation.visible = true
	else:
		$charvalidation.visible = false
		


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
