extends Node2D

func _ready() -> void:
	$spaceshipscene.play("default")
func _process(delta: float) -> void:
	pass


func _on_spaceshipscene_animation_finished() -> void:
	get_tree().change_scene_to_file("res://intro.tscn")
