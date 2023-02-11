extends KinematicBody2D

var Attack = 1
var Shooting = 0


func _ready():
	pass
	
func _physics_process(_delta):
	if Attack == 1:
		if position.x > 300:
			position.x -= 2 
		if position.x <= 300:
			pass
	if Attack == 0:
		position.x += 1
		$FloggerSprite.animation = "Walking"
				
	if Shooting == 1:
		$FloggerSprite.animation = "Shoot"


func _on_Timer_timeout():
	Attack = 0
	Shooting = 0
	position.x += 75
	$FloggerSprite.flip_h = false
	


func _on_LinemanSprite_animation_finished():
	pass


func _on_AnimationTimer_timeout():
	pass
