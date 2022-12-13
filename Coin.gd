extends Area2D

var game

func _ready():
	game = get_tree().current_scene
	

func _on_Coin_body_entered(body):
	#print(body.name)
	if (body.name == "Player"):
		queue_free()
		game.count_score()
