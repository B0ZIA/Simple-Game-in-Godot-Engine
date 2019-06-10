extends KinematicBody2D

var iCollected : bool = false

func Destroy():
	if !iCollected:
    	iCollected = true
    	position = Vector2(-100,-100)
    	get_parent().get_node("Player").score += 1
    	pass