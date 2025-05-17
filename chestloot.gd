extends Area2D

var inside
var opened
var isrelic
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	opened = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if inside == true and Input.is_action_pressed("Interact"):
		$AnimatedSprite2D.play("opening")
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.frame = 4
		opened = true
		isrelic = true
		
		if isrelic:
			Globals.map_obtained = true
		print(randi() % 2)


func _on_area_entered(area: Area2D) -> void:
	if opened == false:
		$Open.visible = true
		inside = true


func _on_area_exited(area: Area2D) -> void:
	$Open.visible = false
