extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await preload_scenes()
	$AnimatedSprite2D.frame = 0
	$AnimatedSprite2D.play()
	await $AnimatedSprite2D.animation_finished
	get_tree().change_scene_to_file("res://intro.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func preload_scenes() -> void:
	var spaceship_instance: PackedScene = preload("res://spaceship.tscn")
	var xeridia_instance: PackedScene = preload("res://xeridia.tscn")
	var nexar_instance: PackedScene = preload("res://Nexar.tscn")
	var valtania_instance: PackedScene = preload("res://valtania.tscn")
	var astria_instance: PackedScene = preload("res://Astria.tscn")
	var zorvath_instance: PackedScene = preload("res://ZORVATH.tscn")
	
	await get_tree().process_frame
	await get_tree().create_timer(0.5).timeout
