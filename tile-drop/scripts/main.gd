extends Node2D

var tile1 = preload("res://scenes//tile1.tscn")
var tile2 = preload("res://scenes//tile2.tscn")
var tile3 = preload("res://scenes//tile3.tscn")
var number = 0
var number2 = 0

func _ready() -> void:
	rng()

func rng() -> void:
	
	number = randi_range(1, 3)
	number2 = randi_range(1, 1000)
	
	if (number == 1):
		var tile_1 = tile1.instantiate()
		tile_1.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_1)
		
	if (number == 2):
		var tile_2 = tile2.instantiate()
		add_child(tile_2)
		tile_2.global_position = global_position + Vector2 (number2, 0)

	if (number == 3):
		var tile_3 = tile3.instantiate()
		add_child(tile_3)
		tile_3.global_position = global_position + Vector2 (number2, 0)
