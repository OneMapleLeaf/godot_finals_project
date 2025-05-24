extends Node2D

var OnArea
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$spaceshipbgm.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.extracted == true:
		$CanvasLayer/ColorRect.visible = true
		$CanvasLayer/AnimationPlayer.play("fadeout")
		Globals.extracted = false
	if Input.is_action_pressed("Interact") and OnArea:
		$accessconsolesfx.play()
		$Player_Character/planets.visible = true

func _on_consolearea_area_entered(area: Area2D) -> void:
	OnArea = true
	$Consolearea/interact.visible = true


func _on_consolearea_area_exited(area: Area2D) -> void:
	OnArea = false
	$Consolearea/interact.visible = false
