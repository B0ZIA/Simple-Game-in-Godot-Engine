extends KinematicBody2D

var motion : Vector2
var spawn : Vector2 = Vector2(85.91,483.16)
var score : int = 0

	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x = 300
		
	elif Input.is_action_pressed("ui_left"):
		motion.x = -300
		
	else:
		motion.x = 0
	
	if Input.is_action_pressed("ui_down"):
		motion.y = 300
		
	elif Input.is_action_pressed("ui_up"):
		motion.y = -300
		
	else:	 
		motion.y = 0
		
	for i in get_slide_count():
    	var collision = get_slide_collision(i)
    	var name = collision.collider.name
    	print("Collision: ",collision.collider.name)
    	if name[0] == 'E' and name[1] == 'n' and name[2] == 'e' and name[3] == 'm':
        	position = spawn
    	if name[0] == 'S' and name[1] == 'c' and name[2] == 'o' and name[3] == 'r':
        	get_parent().get_node(name).Destroy()
        	break
	
	if score >= 11:
    	print(get_tree().current_scene)
    	get_tree().change_scene("res://Scenes/GameScene2.tscn")
	
	get_parent().get_node("ScoreText").set_text(String(score))
	move_and_slide(motion)
	
