extends KinematicBody2D

var rotation_speed = 1

onready var Cannonball = load("res://FX/Cannonball.tscn")
var nose = Vector2(0,-60)
var FX = null

func _ready():
	pass

func _physics_process(_delta):
	if Input.is_action_just_pressed("Fire"):
			var cannonball = Cannonball.instance()
			var FX = get_node_or_null("/root/Game/FX")
			if FX != null:
				cannonball.position = position + nose.rotated($Aim.rotation)
				cannonball.rotation = $Aim.rotation
				FX.add_child(cannonball)

	get_input()
	
func get_input():
	var to_return = Vector2.ZERO
	if Input.is_action_pressed("Down"):
		$Aim.rotation_degrees += rotation_speed
	if Input.is_action_pressed("Up"):
		$Aim.rotation_degrees -= rotation_speed
	return to_return.rotated(rotation)

