extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Entername.gender == 1:
		$MALE1.visible = true
		print("male appear")
	elif Entername.gender == 2:
		$FEMALE1.visible = true
		print("female appear")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
