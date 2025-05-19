extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$".".visible = false
	$Area2D/CollisionShape2D.disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AnimatedSprite2D.play("blue")
	$AnimatedSprite2D.stop()
	$AnimatedSprite2D.frame = 5


func _on_area_2d_area_entered(area: Area2D) -> void:
	get_tree().change_scene_to_file("res://spaceship.tscn")
	Globals.curStageProg = false
	pass # Replace with function body.
