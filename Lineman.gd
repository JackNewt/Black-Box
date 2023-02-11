extends KinematicBody2D

var Attack = 1
var Shooting = 0


func _ready():
	pass
	
func _physics_process(_delta):
	if Attack == 1:
		if position.x > 750:
			position.x -= 2 
		if position.x <= 750:
			Shooting = 1
			position.x -= .5
	if Attack == 0:
		position.x += 1
		$LinemanSprite.animation = "Walking"
				
	if Shooting == 1:
		$LinemanSprite.animation = "ShootPrep"


func _on_Timer_timeout():
	Attack = 0
	Shooting = 0
	position.x += 75
	$LinemanSprite.flip_h = false
	


func _on_LinemanSprite_animation_finished():
	if $LinemanSprite.animation == "Shootprep":
		$LinemanSprite.play("Shoot")


func _on_AnimationTimer_timeout():
	pass # Replace with function body.
