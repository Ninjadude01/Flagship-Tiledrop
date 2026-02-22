extends Control

@onready var label: Label = $Label

func _ready() -> void:
	label.text = "Your score was: " + str(Globals.points)

func _on_main_menu_pressed() -> void:
	Globals.lives = 3
	Globals.points = 0
	Globals.startSpeed = 100
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
