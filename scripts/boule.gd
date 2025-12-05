extends CharacterBody2D
class_name Boule

signal bloc_detruit
signal boule_touchee

var vitesse = 100
var direction = Vector2(1,1)


func _physics_process(delta: float) -> void:
	var collision = move_and_collide(direction * vitesse * delta)
	if collision: 
		direction = direction.bounce(collision.get_normal())
		if (collision.get_collider() is RigidBody2D):
			collision.get_collider().call_deferred("queue_free")
			emit_signal("bloc_detruit")
			vitesse += 10
		else :
			emit_signal("boule_touchee")
		
