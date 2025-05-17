extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_tree().current_scene.scene_file_path == "res://xeridia.tscn":
		$map1.visible = true
		$AnimatedSprite2D.play("map1")
	if get_tree().current_scene.scene_file_path == "res://Nexar.tscn":
		$map2.visible = true
		$AnimatedSprite2D.play("map2")
	if get_tree().current_scene.scene_file_path == "res://valtania.tscn":
		$map3.visible = true
		$AnimatedSprite2D.play("map3")
	if get_tree().current_scene.scene_file_path == "res://Astria.tscn":
		$map4.visible = true
		$AnimatedSprite2D.play("map4")
	if get_tree().current_scene.scene_file_path == "res://ZORVATH.tscn":
		$map5.visible = true
		$AnimatedSprite2D.play("map5")


func _on_touchscreenbuttonx_pressed() -> void:
	$".".visible = false
	Globals.map_obtained = false
