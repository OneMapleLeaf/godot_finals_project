extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_homet_btn_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_packed(SceneCache.spaceship_instance)
	


func _on_restart_btn_pressed() -> void:
	get_tree().paused = false
	Globals.resetCurrentStage(Globals.curStage)
	get_tree().reload_current_scene()


func _on_exit_btn_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://intro.tscn")
	
func _on_touchscreenresume_pressed() -> void:
	get_tree().paused = false
	$".".visible = false
