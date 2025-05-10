extends Node2D

var femaleselected = false
var maleselected = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_touchscreenstart_pressed() -> void:
	get_tree().change_scene_to_file("res://selectCharacter.tscn")


func _on_touchscreenmale_pressed() -> void:
	if $selectionfemale.visible == false:
		$selectionmale.visible = true
		
	if $selectionfemale.visible == true:
		$selectionmale.visible = true
		$selectionfemale.visible = false


func _on_touchscreenfemale_pressed() -> void:
	if $selectionmale.visible == false:
		$selectionfemale.visible = true
	if $selectionmale.visible == true:
		$selectionfemale.visible = true
		$selectionmale.visible = false
