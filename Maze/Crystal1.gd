extends Spatial

onready var player = get_node("/root/Maze/Player")

func _on_Area_body_entered(body):
	if body == player:
		queue_free()
