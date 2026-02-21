extends Node2D

var tile1 = preload("res://scenes//tile1.tscn")
var tile2 = preload("res://scenes//tile2.tscn")
var tile3 = preload("res://scenes//tile3.tscn")
var tile4 = preload("res://scenes//tile4.tscn")
var tile5 = preload("res://scenes//tile5.tscn")
var tile6 = preload("res://scenes//tile6.tscn")
var tile7 = preload("res://scenes//tile7.tscn")
var tile8 = preload("res://scenes//tile8.tscn")
var tile9 = preload("res://scenes//tile9.tscn")
var tile10 = preload("res://scenes//tile10.tscn")

var number = 0
var number2 = 0

func _ready() -> void:
	rng()

func rng() -> void:

	number = randi_range(1, 10)
	number2 = randi_range(1, 1000)
	number = 1
	if (number == 1):
		var tile_1 = tile1.instantiate()
		tile_1.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_1)
		
	if (number == 2):
		var tile_2 = tile2.instantiate()
		tile_2.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_2)
		
	if (number == 3):
		var tile_3 = tile3.instantiate()
		tile_3.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_3)
		
	if (number == 4):
		var tile_4 = tile4.instantiate()
		tile_4.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_4)
		
	if (number == 5):
		var tile_5 = tile5.instantiate()
		tile_5.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_5)
		
	if (number == 6):
		var tile_6 = tile6.instantiate()
		tile_6.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_6)
		
	if (number == 7):
		var tile_7 = tile7.instantiate()
		tile_7.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_7)
		
	if (number == 8):
		var tile_8 = tile8.instantiate()
		tile_8.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_8)
		
	if (number == 9):
		var tile_9 = tile9.instantiate()
		tile_9.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_9)
		
	if (number == 10):
		var tile_10 = tile10.instantiate()
		tile_10.global_position = global_position + Vector2 (number2, 0)
		add_child(tile_10)
		

	
