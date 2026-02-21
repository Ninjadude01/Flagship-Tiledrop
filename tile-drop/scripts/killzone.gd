extends Area2D
signal area_hit

func _on_body_entered(_body: Node2D):
	area_hit.emit()
