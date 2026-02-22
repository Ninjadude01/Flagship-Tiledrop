extends Control

func _ready() -> void:
	pass # Replace with function body.

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes//Main.tscn")
	
func _on_howtoplay_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes//howtoplay.tscn")
	
func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes//settings.tscn")
