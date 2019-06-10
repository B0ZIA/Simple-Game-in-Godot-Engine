extends Node


var label : Label


#to jest metoda
func _ready():
	label = find_node("Label")
	pass

func _on_Button_pressed():
	label.text = "Loading..."
	get_tree().change_scene("res://Scenes/GameScene1.tscn")
	pass # Replace with function body.
