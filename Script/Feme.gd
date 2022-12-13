extends Node2D


func _on_DanoPlayer_body_entered(body):
	
	if(body.name == "Player"):
		print(body.name)
