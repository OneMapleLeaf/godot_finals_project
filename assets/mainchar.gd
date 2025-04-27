extends CharacterBody2D

var speed = 100
var isWalking
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	isWalking = false
	if Input.is_action_pressed("W"):
		$AnimatedSprite2D.play("walk_up")
		isWalking = true
	if Input.is_action_pressed("S"):
		$AnimatedSprite2D.play("walk_down")
		isWalking = true
	if Input.is_action_pressed("A"):
		$AnimatedSprite2D.play("walk_left")
		isWalking = true
	if Input.is_action_pressed("D"):
		$AnimatedSprite2D.play("walk_right")
		isWalking = true
	if !isWalking:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.frame = 1
	velocity = (getInput().normalized() * speed)
	move_and_slide()
	
func getInput():
	var move = Vector2(Input.get_axis("A", "D"), Input.get_axis("W", "S"))
	return move
