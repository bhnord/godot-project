extends Area2D

@onready var timer = $Timer

func _on_body_entered(_body):
	if timer.is_stopped():
		_body.kill()
		timer.start()
	
func _on_timer_timeout():
	get_tree().reload_current_scene()
