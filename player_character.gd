extends CharacterBody2D

var speed = 150
var isWalking
func _ready() -> void:
	if Globals.character_gender == null:
		Globals.character_gender = "male"
	$AnimatedSprite2D.play("%s_default" % Globals.character_gender)
	
	randomize()
	for sprite in get_tree().get_nodes_in_group("delay_obstacle"):
		if sprite is AnimatedSprite2D:
			var anim = sprite.animation
			sprite.frame = randi() % sprite.sprite_frames.get_frame_count(anim)
			var delay = randf() * 2
			start_delayed_play(sprite, delay)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	isWalking = false

	# Priority: D > A > W > S
	if Input.is_action_pressed("D"):
		$AnimatedSprite2D.play("%s_walk_right" % Globals.character_gender)
		isWalking = true
	elif Input.is_action_pressed("A"):
		$AnimatedSprite2D.play("%s_walk_left" % Globals.character_gender)
		isWalking = true
	elif Input.is_action_pressed("W"):
		$AnimatedSprite2D.play("%s_walk_up" % Globals.character_gender)
		isWalking = true
	elif Input.is_action_pressed("S"):
		$AnimatedSprite2D.play("%s_walk_down" % Globals.character_gender)
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

func start_delayed_play(sprite: AnimatedSprite2D, delay: float):
	await get_tree().create_timer(delay).timeout
	if is_instance_valid(sprite):
		sprite.play()
		var collision_nodes = [
			sprite.get_node_or_null("CollisionShape2D"),
			sprite.get_node_or_null("CollisionPolygon2D")
		]
		
		if collision_nodes[0] == null and sprite.get_parent():
			collision_nodes[0] = sprite.get_parent().get_node_or_null("CollisionShape2D")
		if collision_nodes[1] == null and sprite.get_parent():
			collision_nodes[1] = sprite.get_parent().get_node_or_null("CollisionPolygon2D")
		
		for node in collision_nodes:
			if node:
				node.disabled = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	var parent = area.get_parent()
	if parent.is_in_group("collectibles"):
		parent.queue_free()
	if parent.is_in_group("obstacles"):
		$DamageTimer.start()

func _on_area_2d_area_exited(area: Area2D) -> void:
	var parent = area.get_parent()
	if parent.is_in_group("obstacles"):
		$DamageTimer.stop()


func _on_damage_timer_timeout() -> void:
	$AnimationPlayer.play("on_hit")
	print("hit")
