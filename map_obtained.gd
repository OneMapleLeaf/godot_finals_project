extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_tree().current_scene.scene_file_path == "res://xeridia.tscn":
		$map1.visible = true
		$AnimatedSprite2D.play("map1")


func _on_touchscreenbuttonx_pressed() -> void:
	$".".visible = false
	Globals.map_obtained = false
