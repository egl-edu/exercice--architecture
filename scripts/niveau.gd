extends Node2D


@export var zone_defaite : ZoneDefaite

func _ready() -> void:
	zone_defaite.defaite_timeout.connect(on_defaite_timeout)

func bloc_detruit():
	$SfxBlocDetruit.play(0.09)


func boule_touchee():
	$SfxBouleTouchee.play(0.11)


func on_defaite_timeout() -> void:
	$SfxGameOver.play()
	#body.process_mode = Node.PROCESS_MODE_DISABLED
	get_tree().reload_current_scene()
	
