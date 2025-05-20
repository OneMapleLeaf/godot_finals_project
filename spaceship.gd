extends Node2D

var OnArea
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_pressed("Interact") and OnArea:
		$Player_Character/planets.visible = true
		print("working")


func _on_consolearea_area_entered(area: Area2D) -> void:
	OnArea = true
	$Consolearea/interact.visible = true


func _on_consolearea_area_exited(area: Area2D) -> void:
	OnArea = false
	$Consolearea/interact.visible = false
