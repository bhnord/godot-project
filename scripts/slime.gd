extends Node2D

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_down_right = $RayCastDownRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_down_left = $RayCastDownLeft


var direction = 1
const SPEED = 60

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding() or not ray_cast_down_right.is_colliding():
		direction = -1
	elif ray_cast_left.is_colliding() or not ray_cast_down_left.is_colliding():
		direction = 1
	position.x += direction * SPEED * delta
		
