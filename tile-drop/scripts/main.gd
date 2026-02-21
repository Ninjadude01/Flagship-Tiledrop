extends Node2D

@onready var tile: Node2D = $Tile


var tile1 = preload("res://scenes//tile1.tscn")

var number = 0
var pos = 0

func _ready() -> void:
	pos = randi_range(100, 900)
	#rng()

func rng() -> void:
	#number = randi_range(1, 10)
	number = 1
	if (number == 1):
		var tile_1 = tile1.instantiate()
		tile_1.global_position = global_position + Vector2 (pos, 50)
		add_child(tile_1)
		
		

	
