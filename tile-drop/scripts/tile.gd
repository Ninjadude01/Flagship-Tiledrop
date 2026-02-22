extends Node2D

@onready var body: RigidBody2D = $RigidBody2D
#@onready var sprite: Sprite2D = $RigidBody2D/Sprite2D
@onready var animated_sprite: AnimatedSprite2D = $RigidBody2D/AnimatedSprite2D
@onready var rightsound: AudioStreamPlayer2D = $Rightsound

signal nextTile

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

var keyDict2 = {
	1: {"1":false, "2":true, "3":false, "4":false, "5":false, "6":true, "7":false, "8":false, "9":false},
	2: {"1":false, "2":true, "3":false, "4":true, "5":true, "6":true, "7":false, "8":true, "9":false},
	3: {"1":false, "2":true, "3":false, "4":true, "5":false, "6":true, "7":false, "8":false, "9":false},
	4: {"1":false, "2":false, "3":false, "4":true, "5":true, "6":true, "7":false, "8":false, "9":false},
	5: {"1":true, "2":false, "3":false, "4":false, "5":true, "6":false, "7":false, "8":false, "9":true},
	6: {"1":true, "2":false, "3":true, "4":false, "5":true, "6":false, "7":true, "8":false, "9":true},
	7: {"1":true, "2":true, "3":true, "4":false, "5":false, "6":true, "7":false, "8":false, "9":true},
	8: {"1":true, "2":true, "3":true, "4":true, "5":false, "6":true, "7":true, "8":true, "9":true},
	9: {"1":true, "2":true, "3":true, "4":false, "5":false, "6":true, "7":true, "8":true, "9":true},
	10: {"1":true, "2":true, "3":true, "4":false, "5":true, "6":false, "7":true, "8":true, "9":true}
}

var keys = [1, 2, 3, 4, 5, 6 ,7 ,8 ,9]
var keysPressed = 0
var sequence = []
var sequenceDetect = []
var points = 0
var textNum = 0
var texture = Texture
var animation = ""

func _ready():
	genRandTexture()
	animated_sprite.play(animation)
	#sprite.texture = texture
	body.linear_velocity = Vector2(0, Globals.startSpeed)
	setSequence()
	
func genRandTexture():
	textNum = randi_range(1, 10)
	animation = "pattern " + str(textNum)
	#texture = load("res://assets/" + str(textNum) + "old.png")


func _process(_delta: float) -> void: #bug thingy
	if checkSequence():
		Globals.points += 5
		Globals.increaseSpeed()
		print("Points Earned: " + str(Globals.points))
		queue_free()
		resetInput()
		nextTile.emit()
	elif !checkSequence():
		restart()
	else:
		queue_free()
		resetInput()
		nextTile.emit()
	
func _input(event: InputEvent):
	if event is InputEventKey and event.is_released():
		sequenceDetect.append(event.as_text())

func restart():
	if Input.is_action_just_released("8") && Input.is_action_just_released("9"):
		print("restart")
		resetInput()

func checkSequence():
	if sequenceDetect.size() == sequence.size():
		for i in range(sequence.size()):
			if sequenceDetect[i] == sequence[i]:
				points += 1
		if points == sequence.size():
			rightsound.play()
			print("Correct Sequence")
			#getSequence()
			return true
		else:
			print("Incorrect Sequence! Try again!")
			return false

func setSequence():
	for key in keyDict2[textNum]:
		if keyDict2[textNum][key]:
			sequence.append(key)

func getSequence():
	for key in sequence:
		print(key)

func resetInput():
	sequenceDetect.clear()
	points = 0
