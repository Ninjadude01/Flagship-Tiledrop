extends Control
@onready var countdown: Timer = $countdown
@onready var label: Label = $Label
@onready var timer_2: Timer = $timer2

var count = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	countdown.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if count:
		label.text = str(round(countdown.time_left))



func _on_timer_2_timeout() -> void:
	get_tree().change_scene_to_file("res://scenes/Main.tscn")


func _on_countdown_timeout() -> void:
	count = false
	label.text = "START!"
	timer_2.start()
