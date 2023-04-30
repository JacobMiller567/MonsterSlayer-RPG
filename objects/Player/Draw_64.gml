
draw_set_font(Font5);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);

if (global.active_quest == true) { // if player has active quest
//if (quest_active) {
	//alarm[0] = room_speed * 4; 
	draw_text_ext_transformed(300, 80, "Quest: " + global.quest[global.current_quest], 
			0, 400, 2, 2, 0) // Crash???
}

