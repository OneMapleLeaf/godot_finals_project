extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Area2D/Labelinteract.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if Input.is_action_pressed("interact"):
		$Area2D/Labelinteract.visible = true
		get_tree().change_scene_to_file("res://planets.tscn")
