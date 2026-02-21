extends Node2D

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

var sequence = []
var sequenceDetect = []
var points = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setSequence()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if sequenceDetect.size() == sequence.size():
		checkSequence()
	

func _input(event: InputEvent):
	if event is InputEventKey and event.is_released():
		#print(event.as_text())
		sequenceDetect.append(event.as_text())

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
		
