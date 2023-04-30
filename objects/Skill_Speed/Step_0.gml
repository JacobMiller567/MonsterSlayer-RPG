
if (parent != noone) {
	//x = parent.bbox_right - 120;//
	//y = parent.bbox_bottom - 70;//
	x = parent.bbox_left + 175;
	y = parent.bbox_bottom - 380; 
}


gui_x = device_mouse_x_to_gui(0)
gui_y = device_mouse_y_to_gui(0)

if (point_in_rectangle(gui_x, gui_y, x, y, x + 64,y + 64)) {
	if (device_mouse_check_button(0, mb_left) and click == true) {
		if (global.skill_points >= 1) {	
			global.skill_points -= 1;
			//Player.player_speed += 2;
			//Player.skill_speed += 1;
			global.speed_level += 1;
			global.player_speed += 0.5;
			click = false;
			alarm[0] = room_speed * 0.5;
		}
	}
}