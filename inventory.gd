extends Sprite2D

var counters
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	counters = [
		"green_gem_counter",
		"blue_gem_counter",
		"gold_gem_counter",
		"violet_gem_counter",
		"red_gem_counter"
	]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var maps = Globals.maps
	for i in range(maps.size()):
		if maps[i] == true:
			$".".get_node("Redfutuisticlock%d" % i).visible = false
			$".".get_node("Map_%d" % i).modulate = Color("FFFFFF")
			

	for i in range(counters.size()):
		var gem_name = counters[i]
		var count = Globals.gems[gem_name]["count"]
		$".".get_node(gem_name).text = str(count)
			
			
		


func _on_xbutton_pressed() -> void:
	$".".visible = false
