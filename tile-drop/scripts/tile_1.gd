extends RigidBody2D
@export var bottom: PackedScene
@onready var body: RigidBody2D = $"."

func _ready():

	body.linear_velocity = Vector2(0, 400)

	var bottom_scene = preload("res://scenes/killzone.tscn")
	var bottoms = bottom_scene.instantiate()

	#bottoms.global_position = global_position + Vector2 (0, 0)

	get_tree().current_scene.add_child(bottoms)
	bottoms.area_hit.connect(_on_area_entered)

	
func _on_area_entered():
	queue_free()
