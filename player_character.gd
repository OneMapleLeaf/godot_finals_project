extends CharacterBody2D

var speed = 150
var isWalking
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	isWalking = false

	# Priority: D > A > W > S
	if Input.is_action_pressed("D"):
		$AnimatedSprite2D.play("male_walk_right")
		isWalking = true
	elif Input.is_action_pressed("A"):
		$AnimatedSprite2D.play("male_walk_left")
		isWalking = true
	elif Input.is_action_pressed("W"):
		$AnimatedSprite2D.play("male_walk_up")
		isWalking = true
	elif Input.is_action_pressed("S"):
		$AnimatedSprite2D.play("male_walk_down")
		isWalking = true
	else:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.frame = 1

	velocity = getInput().normalized() * speed
	move_and_slide()
	isHome()

func getInput():
	var move = Vector2(Input.get_axis("A", "D"), Input.get_axis("W", "S"))
	return move

func isHome():
	
	if get_tree().current_scene.scene_file_path == "res://spaceship.tscn":
		$Camera2D.limit_left = -351
		$Camera2D.limit_right = 1550
		$Camera2D.limit_bottom = 1630
		$Camera2D.limit_top = -159
	else:
		$Camera2D.limit_left = -4
		$Camera2D.limit_right = 1923
		$Camera2D.limit_bottom = 1074
		$Camera2D.limit_top = -2




func _on_area_2d_area_entered(area: Area2D) -> void:
	var parent = area.get_parent()
	if parent.is_in_group("collectibles"):
		parent.queue_free()
	if parent.is_in_group("obstacles"):
		print("hit")
		$AnimationPlayer.play("on_hit")
