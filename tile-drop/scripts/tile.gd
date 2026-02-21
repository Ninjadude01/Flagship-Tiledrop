extends Node2D

@onready var body: RigidBody2D = $RigidBody2D

@export var keyDict = {
	"1":false,
	"2":false,
	"3":false,
	"4":false,
	"5":false,
	"6":false,
	"7":false,
	"8":false,
	"9":false
}

var keys = [1, 2, 3, 4, 5, 6 ,7 ,8 ,9]
var keysPressed = 0

var sequence = []
var sequenceDetect = []
var points = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	body.linear_velocity = Vector2(0, 400)
	setSequence()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if sequenceDetect.size() == sequence.size():
		checkSequence()
	restart()
	

func _input(event: InputEvent):
	if event is InputEventKey and event.is_released():
		sequenceDetect.append(event.as_text())

func restart():
	if Input.is_action_just_released("1") && Input.is_action_just_released("3") && Input.is_action_just_released("7") && Input.is_action_just_released("9"):
		print("restart")
		resetInput()

func checkSequence(): #fix this
	for i in range(sequence.size()):
		if sequenceDetect[i] == sequence[i]:
			points += 1
	if points == sequence.size():
		print("Correct Sequence")
		getSequence()
		get_tree().quit()
	else:
		print("Incorrect Sequence! Try again!")
		resetInput()

func setSequence():
	for key in keyDict:
		if keyDict[key]:
			sequence.append(key)

func getSequence():
	for key in sequence:
		print(key)

func resetInput():
	sequenceDetect.clear()
	points = 0
