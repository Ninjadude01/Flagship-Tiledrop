extends Node2D

#signal deaths

@onready var tile: Node2D = $Tile
@onready var score: Label = $CanvasLayer/ScorePanel/ScoreLabel
@onready var death_label: Label = $CanvasLayer/DeathPanel/DeathLabel

var number = 0
var pos = 100

func _ready() -> void:
	setTile()

func setTile():
	pos = randi_range(100, 900)

func _process(_delta: float):
	tile.position = global_position + Vector2(pos, 50)
	score.text = "Score: " + str(Globals.points)
	death_label.text = "Lives: " + str(Globals.lives)
	if Globals.lives == 0:
		get_tree().quit()
	

#func rng() -> void:
	##number = randi_range(1, 10)
	#number = 1
	#if (number == 1):
		#var tile_1 = tile1.instantiate()
		
		#tile_1.global_position = global_position + Vector2 (pos, 50)
		#add_child(tile_1)

func _on_killzone_body_entered(_body: Node2D) -> void:
	Globals.lives -= 1
	print(Globals.lives)
	tile.hide()
	get_tree().call_deferred("reload_current_scene")

func _on_tile_next_tile() -> void:
	get_tree().reload_current_scene()
