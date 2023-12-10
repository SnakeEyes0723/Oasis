extends Area2D


var gateScene = preload("res://Scenes/Main_Hub.tscn").instantiate()

var gate = gateScene.get_node("StaticBody2D5")

#Sends player back to hub if buttons have not been pressed, sends them to win screen if button is pressed
func _on_body_entered(body):
	if body.is_in_group("Player"):
		if global.objectives < 2:
			global.objectives += 1
			get_tree().change_scene_to_file("res://Scenes/Main_Hub.tscn")
			gate.set_process_mode(PROCESS_MODE_INHERIT)
			gate.visible = true
		else:
			get_tree().change_scene_to_file("res://Scenes/WinScreen.tscn")
