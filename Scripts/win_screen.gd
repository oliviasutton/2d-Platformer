extends Control

@onready var restart: Button = $Restart
@onready var quit: Button = $Quit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_restart_button_down() -> void:
	if restart.button_pressed:
		get_tree().change_scene_to_file("res://Scenes/game.tscn")
		



func _on_quit_button_down() -> void:
	if quit.button_pressed:
		get_tree().quit()
