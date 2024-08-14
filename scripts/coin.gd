extends Area2D

@onready var game_manager = %GameManager
@onready var player = %player

func _on_body_entered(_body):
	print("+1 coin yuh")
	print(player)
	game_manager.add_point()
	queue_free()
