extends Area2D
class_name ZoneDefaite

signal defaite_timeout


func commencer_defaite():
	$Timer.start()
	await $Timer.timeout
	emit_signal("defaite_timeout")


func _on_body_entered(body: Node2D) -> void:
	commencer_defaite()
