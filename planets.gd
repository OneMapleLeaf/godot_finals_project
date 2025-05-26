extends Node2D


# Called when the node enters the scene tree for the first time
var planets
var unlockable_planets
func _ready() -> void:
	unlockable_planets = ["nexar", "valtania", "astria", "zorvath"]
	pass
	
func _process(delta: float) -> void:
	planetVisiblity()
	var maps = Globals.maps
	for i in range(maps.size()):
		if maps[i]:
			if i < 4:
				$".".get_node("Redfutuisticlock%s" % (i + 1)).visible = false
				$".".get_node("%s" % unlockable_planets[i]).modulate = Color("FFFFFF")
			$".".get_node("Completed%s" % i).visible = true
	
func _on_area_2_dxerdia_mouse_entered() -> void:
	$xerdia.scale = Vector2(2.349, 2.349)


func _on_area_2_dxerdia_mouse_exited() -> void:
	$xerdia.scale = Vector2(1.969, 1.969)


func planetVisiblity():
	if $".".visible == false:
		$xerdia/Area2dxerdia.monitorable = false
		$xerdia/Area2dxerdia.monitoring = false
		$nexar/Area2dnexar.monitoring = false
		$nexar/Area2dnexar.monitorable = false
		$valtania/Area2dvaltania.monitoring = false
		$valtania/Area2dvaltania.monitorable = false
		$astria/Area2dastria.monitoring = false
		$astria/Area2dastria.monitorable = false
		$zorvath/Area2Dzorvath.monitoring = false
		$zorvath/Area2Dzorvath.monitorable = false
		
	elif $".".visible == true:
		$xerdia/Area2dxerdia.monitorable = true
		$xerdia/Area2dxerdia.monitoring = true
		$nexar/Area2dnexar.monitoring = true
		$nexar/Area2dnexar.monitorable = true
		$valtania/Area2dvaltania.monitoring = true
		$valtania/Area2dvaltania.monitorable = true
		$astria/Area2dastria.monitoring = true
		$astria/Area2dastria.monitorable = true
		$zorvath/Area2Dzorvath.monitoring = true
		$zorvath/Area2Dzorvath.monitorable = true

func _on_area_2_dnexar_mouse_entered() -> void:
	$nexar.scale = Vector2(1.9, 1.9)
	#testing for unlock planet
	
	#testing for unlock planet


func _on_area_2_dnexar_mouse_exited() -> void:
	$nexar.scale = Vector2(1.675, 1.675)



func _on_area_2_dvaltania_mouse_entered() -> void:
	$valtania.scale = Vector2(1.6, 1.6)


func _on_area_2_dvaltania_mouse_exited() -> void:
	$valtania.scale = Vector2(1.396, 1.396)
	


func _on_area_2_dastria_mouse_entered() -> void:
	$astria.scale = Vector2(1.850, 1.850)


func _on_area_2_dastria_mouse_exited() -> void:
	$astria.scale = Vector2(1.644, 1.644)




func _on_area_2_dzorvath_mouse_entered() -> void:
	$zorvath.scale = Vector2(1.9, 1.9)

func _on_area_2_dzorvath_mouse_exited() -> void:
	$zorvath.scale = Vector2(1.696, 1.696)




func _on_backbutton_pressed() -> void:
	redirect(SceneCache.spaceship_instance)
	
func _on_xeridia_button_pressed() -> void:
	if !Globals.maps[0]:
		redirect(SceneCache.xeridia_instance)

func _on_nexar_button_pressed() -> void:
	if !Globals.maps[1] and Globals.maps[0]:
		redirect(SceneCache.nexar_instance)

func _on_valtania_button_pressed() -> void:
	if !Globals.maps[2] and Globals.maps[1]:
		redirect(SceneCache.valtania_instance)

func _on_astria_button_pressed() -> void:
	if !Globals.maps[3] and Globals.maps[2]:
		redirect(SceneCache.astria_instance)

func _on_zorvath_button_pressed() -> void:
	if Globals.maps[3]:
		redirect(SceneCache.zorvath_instance)

	
func redirect(scene: PackedScene):
	get_tree().change_scene_to_packed(scene)
	
	


func _on_touchscreenback_pressed() -> void:
	$".".visible = false
