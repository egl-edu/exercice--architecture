extends CharacterBody2D
class_name Joueur

var vitesse = 200

func _physics_process(delta: float) -> void:
	var input_mod = Input.get_axis("ui_left", "ui_right")
	move_and_collide(input_mod * Vector2.RIGHT * vitesse * delta)
