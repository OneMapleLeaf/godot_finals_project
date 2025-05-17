extends Node2D

var mapChestVal
var mapChest
var chosenChest
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	mapChestVal = randi() % 8 + 1
	chosenChest = $Chests.get_node("Chest%d" % mapChestVal)
	chosenChest.isrelic = true
	print(chosenChest)
	print(chosenChest.isrelic)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
