extends Slider

func _on_value_changed(value):
	ProjectSettings.set_setting(VNKit.auto_mode_delay, abs(value))

func _on_visibility_changed():
	if visible:
		value = -ProjectSettings.get_setting(VNKit.auto_mode_delay)
