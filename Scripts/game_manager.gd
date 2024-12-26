extends Node

@onready var score_label: Label = $ScoreLabel
@onready var coins = $"../Coins"

var score = 0
var total_coins = 0

func _ready():
# Count all coins at the start of the game
	total_coins = coins.get_child_count()
	print(total_coins)
# Update label to show progress
	update_score_label()

func add_point():
	score += 1
	update_score_label()
	print(score)
	end_game()  # Check if game should end after collecting a coin

func update_score_label():
	score_label.text = "You collected " + str(score) + "/" + str(total_coins) + " coins."

func end_game():
	if score == total_coins:
		get_tree().change_scene_to_file("res://Scenes/WinScreen.tscn")
