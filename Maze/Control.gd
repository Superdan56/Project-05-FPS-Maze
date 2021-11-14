extends Control

var score = 0
onready var LabelScore = get_node("/root/Game/Control/score")

func _ready():
	var Score = score as String
	LabelScore.text = "Score " + Score

func update_score():
	score += 1
	var Score = score as String
	LabelScore.text = "Score " + Score
	if Score >= 4:
		get_tree().change_scene("res://UI/The_End.tscn")
