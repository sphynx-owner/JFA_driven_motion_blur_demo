extends WorldEnvironment

var iteration_count = 3

var all_fps : Array[int] = [
	0, 
	5,
	15,
	30,
	60,
]

var fps_index : int = 0

func _input(event: InputEvent) -> void:
	#if Input.is_action_just_pressed("SPACE"):
		#compositor.compositor_effects[0].enabled = !compositor.compositor_effects[0].enabled
		#compositor.compositor_effects[1].enabled = !compositor.compositor_effects[0].enabled
		#$"../Control/Label".text = "Mine" if compositor.compositor_effects[0].enabled else "Base"
	#
	if compositor.compositor_effects.size() == 0:
		return
	
	var motion_blur_effect = compositor.compositor_effects[0]
	
	if Input.is_action_just_pressed("left"):
		iteration_count -= 1
		iteration_count = clamp(iteration_count, 1, 11)
		
		motion_blur_effect.iteration_count = iteration_count
		$"../Control/VBoxContainer/HBoxContainer/iteration_count".text = str(iteration_count)
	
	if Input.is_action_just_pressed("right"):
		iteration_count += 1
		iteration_count = clamp(iteration_count, 1, 11)
		
		motion_blur_effect.iteration_count = iteration_count
		$"../Control/VBoxContainer/HBoxContainer/iteration_count".text = str(iteration_count)
	
	if Input.is_action_just_pressed("SPACE"):
		motion_blur_effect.draw_debug = 1 if motion_blur_effect.draw_debug == 0 else 0

	
	if Input.is_action_just_pressed("up"):
		fps_index += 1
		fps_index = clamp(fps_index, 0, all_fps.size() - 1) 
		Engine.max_fps = all_fps[fps_index]
		$"../Control/VBoxContainer/HBoxContainer3/target fps".text = str(all_fps[fps_index])
	
	if Input.is_action_just_pressed("down"):
		fps_index -= 1
		fps_index = clamp(fps_index, 0, all_fps.size() - 1) 
		Engine.max_fps = all_fps[fps_index]
		$"../Control/VBoxContainer/HBoxContainer3/target fps".text = str(all_fps[fps_index])
	
	if Input.is_action_just_pressed("freeze"):
		motion_blur_effect.freeze = !motion_blur_effect.freeze
	
	if Input.is_action_just_pressed("T"):
		motion_blur_effect.enabled = !motion_blur_effect.enabled

func _process(delta: float) -> void:
	$"../Control/VBoxContainer/HBoxContainer2/fps".text = str(Engine.get_frames_per_second())
