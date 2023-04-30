
if (parent != noone) {
	x = parent.bbox_left + 5; //+32
	y = parent.bbox_bottom - 380; //-500
	
}

gui_x = device_mouse_x_to_gui(0)
gui_y = device_mouse_y_to_gui(0)


if (point_in_rectangle(gui_x, gui_y, x, y, x + 64,y + 64)) {
	if (device_mouse_check_button(0, mb_left) and click == true) {
		if (global.skill_points >= 1) {
			//Upgrade_Skills.skill_health += 25;
		    //Player.player_damage += 2; // Player gains 2 extra damage
			global.skill_points -= 1;
			//Player.skill_damage += 1;
			global.strength_level += 1;
			global.player_damage += 1;
			click = false;
			alarm[0] = room_speed * 0.5;
		}
	}

}