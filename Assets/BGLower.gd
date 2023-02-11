extends Sprite


func _ready():
	pass

func _physics_process(_delta):
	position.x -= .5
	if position.x < -450:
		position.x = 0
