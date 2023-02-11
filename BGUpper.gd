extends Sprite


func _ready():
	pass
	
func _physics_process(_delta):
	if position.x > 500:
		position.x -= .1
