extends Area2D

var speed = 500
var screen_size

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var v = Vector2()
	if Input.is_action_pressed("ui_left"):
		print('11')
		v.x -= 1
	if Input.is_action_pressed("ui_right"):
		print('22')
		v.x += 1
	if Input.is_action_pressed("ui_down"):
		print('33')
		v.y += 1
	if Input.is_action_pressed("ui_up"):
		print('44')
		v.y -= 1
	if v.length() > 0:
		v = Vector2().normalized() * speed
		$Sprite.play()
	position += v * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
