extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.choose_random_chest($Chests)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.map_obtained:
		Globals.trigger_chest_opened($Chests)
