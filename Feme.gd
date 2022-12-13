extends Node2D

var game

func _ready():
	game = get_tree().current_scene

func _on_DanoPlayer_body_entered(body):
	
	if(body.name == "Player"):
		game.count_life()


func _on_DeadZombie_body_entered(body):
	
	if(body.name == "Player"):
		$AnimatedSprite.animation = "Dead"
		


func _on_AnimatedSprite_animation_finished():
	if ($AnimatedSprite.animation == "Dead"):
			queue_free()
