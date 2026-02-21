extends RigidBody2D
@onready var body: RigidBody2D = $"."

func _ready() -> void:
	body.linear_velocity = Vector2(0, 400)
