extends KinematicBody2D
const UP = Vector2(0,-1)
const SPEED = 55
var motion = Vector2()
var last_key = 0

func _physics_process(delta):
	if Input.is_key_pressed(KEY_D):
		motion.x = SPEED
		$animations.play("move-side-right")
		last_key = KEY_D
		
	elif Input.is_key_pressed(KEY_A):
		motion.x = -SPEED
		$animations.play("move-side-left")
		last_key = KEY_A
		
	elif Input.is_key_pressed(KEY_W):
		motion.y = -SPEED
		$animations.play("move-up")
		last_key = KEY_W
		
	elif Input.is_key_pressed(KEY_S):
		motion.y = SPEED
		$animations.play("move-down")
		last_key = KEY_S
		
	else:
		motion.x = 0
		motion.y = 0
		$animations.
		
		
		
	motion = move_and_slide(motion)
	
	
	#Animações
	

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
