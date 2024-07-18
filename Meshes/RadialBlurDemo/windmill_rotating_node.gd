extends Node3D

var time_multiplier : float = 1

var start_time : float = 0

func _ready():
	time_multiplier = randf_range(1, 1.5)
	start_time = randf_range(0, 1)

func _process(delta: float) -> void:
	var rotation_speed : float = 20. * (1. + sin(time_multiplier * float(Time.get_ticks_msec()) / 1000. + start_time) / 2.)
	rotation += Vector3(0, 0, rotation_speed * delta)
