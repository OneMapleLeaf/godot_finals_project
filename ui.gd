extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_inventory_pressed() -> void:
	if $inventoryui.visible == true:
		$inventoryui.visible = false
	else:
		$inventoryui.visible = true


func _on_pause_pressed() -> void:
	$menu.visible = true
