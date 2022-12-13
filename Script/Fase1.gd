extends Node2D

#animações da tela
var score = 0;
var life = -1;

func _ready():
	$HUD/Score.text = "Score: " + str(score)

func count_score():
	score += 1
	$HUD/Score.text = "Score: " + str(score)
#quando ou onde o personagem soma os itens? 

