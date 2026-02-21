extends RigidBody2D
@onready var body: RigidBody2D = $"."

func _ready() -> void:
	body.linear_velocity = Vector2(0, 400)

func _on_body_entered(_body: Area2D):
	queue_free()
