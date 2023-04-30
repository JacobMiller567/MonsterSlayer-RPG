if (player_detected) {
draw_self();
draw_set_font(Font5);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);


if (!textEnd) {
	draw_sprite(sTextScreen, Text_Screen, 115, 320);
	var len = string_length(text[global.current_text]);
	if (current_char < len)
	{
		current_char += char_speed;
	//	audio_play_sound(text_read_out, 3, false);
	}
	var dialogue = string_copy(text[global.current_text], 1, current_char);
	draw_text(text_x, text_y, dialogue);
	
	if (current_char >= len) 
	{
		audio_stop_sound(text_read_out);
	}


	}

}


/*

if (global.active_quest == true) {
//if (quest_active) {
	//alarm[0] = room_speed * 4;
	draw_set_font(Font3);
	draw_text_ext_transformed(300, 80, "Quest: " + global.quest[global.current_quest],
			0, 400, 2, 2, 0)
}
*/
