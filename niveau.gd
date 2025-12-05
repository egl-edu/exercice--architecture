extends Node2D

func bloc_detruit():
	$AudioStreamPlayer.play(0.09)

func boule_touchee():
	$AudioStreamPlayer2.play(0.11)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Boule:
		$AudioStreamPlayer3.play()
		$Area2D/Timer.start()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		await $Area2D/Timer.timeout
		get_tree().reload_current_scene()
	
