extends Node2D


# Called when the node enters the scene tree for the first time


func _on_area_2_dxerdia_mouse_entered() -> void:
	$xerdia.scale = Vector2(2.349, 2.349)


func _on_area_2_dxerdia_mouse_exited() -> void:
	$xerdia.scale = Vector2(1.969, 1.969)




func _on_area_2_dnexar_mouse_entered() -> void:
	$nexar.scale = Vector2(1.9, 1.9)


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
