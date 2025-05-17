extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.map_obtained:
		$mapobtained.visible = true


func _on_inventory_pressed() -> void:
	if $inventoryui.visible == true:
		$inventoryui.visible = false
	else:
		$inventoryui.visible = true


func _on_pause_pressed() -> void:
	$menu.visible = true
