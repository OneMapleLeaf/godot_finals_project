extends Node2D


# Called when the node enters the scene tree for the first time
var SPACESHIP_SCENE = SceneCach.spaceship_instance
var XERIDIA_SCENE = SceneCach.xeridia_instance
var NEXAR_SCENE = SceneCach.nexar_instance
var VALTANIA_SCENE = SceneCach.valtania_instance
var ASTRIA_SCENE = SceneCach.astria_instance
var ZORVATH_SCENE = SceneCach.zorvath_instance

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	pass
	
func _on_area_2_dxerdia_mouse_entered() -> void:
	$xerdia.scale = Vector2(2.349, 2.349)


func _on_area_2_dxerdia_mouse_exited() -> void:
	$xerdia.scale = Vector2(1.969, 1.969)




func _on_area_2_dnexar_mouse_entered() -> void:
	$nexar.scale = Vector2(1.9, 1.9)
	#testing for unlock planet
	$nexar.modulate = Color("FFFFFF")
	$Redfutuisticlock1.visible = false
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
	redirect(SPACESHIP_SCENE)
	
func _on_xeridia_button_pressed() -> void:
	if !Globals.maps[0]:
		redirect(XERIDIA_SCENE)

func _on_nexar_button_pressed() -> void:
	if !Globals.maps[1]:
		redirect(NEXAR_SCENE)

func _on_valtania_button_pressed() -> void:
	if !Globals.maps[2]:
		redirect(VALTANIA_SCENE)

func _on_astria_button_pressed() -> void:
	if !Globals.maps[3]:
		redirect(ASTRIA_SCENE)

func _on_zorvath_button_pressed() -> void:
	if !Globals.maps[4]:
		redirect(ZORVATH_SCENE)

	
func redirect(scene: PackedScene):
	get_tree().change_scene_to_packed(scene)
	
	
