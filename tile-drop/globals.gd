extends Node

var points = 00
var lives = 3
var startSpeed = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	points = 0
	startSpeed = 100


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func increaseSpeed():
	startSpeed *= 1.05
