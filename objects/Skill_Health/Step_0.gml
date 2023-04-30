

if (parent != noone) {
	x = parent.bbox_left + 85;
	y = parent.bbox_bottom - 380;	
}

gui_x = device_mouse_x_to_gui(0)
gui_y = device_mouse_y_to_gui(0)


if (point_in_rectangle(gui_x, gui_y, x, y, x + 64,y + 42)) {
	if (device_mouse_check_button(0, mb_left) and click == true) {
		if (global.skill_points >= 1) {
			global.max_health += 20;
			global.health += 20;
			global.skill_points -= 1;
			global.health_level += 1;
			click = false;
			alarm[0] = room_speed * 0.5;
		}
	}
}
			
			



	


