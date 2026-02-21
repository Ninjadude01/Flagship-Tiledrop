extends Node2D

@export var keyDict = {
	"r1c1":false,
	"r1c2":false,
	"r1c3":false,
	"r2c1":false,
	"r2c2":false,
	"r2c3":false,
	"r3c1":false,
	"r3c2":false,
	"r3c3":false
}

var sequence = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#test that it works
	setSequence()
	getSequence()
	get_tree().quit()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func setSequence():
	for key in keyDict:
		if keyDict[key]:
			sequence.append(key)

func getSequence():
	for key in sequence:
		print(key)
