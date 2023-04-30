// used to skip text

//Reference- https://gamemaker.io/en/tutorials/coffee-break-tutorial-easy-typewriter-dialogue-gmlhttps://gamemaker.io/en/tutorials/coffee-break-tutorial-easy-typewriter-dialogue-gml


if (player_detected) {
if (!textEnd) {
	

var len = string_length(text[global.current_text]);

if (current_char < len)
{
	current_char = len;
}

else 
{
	global.current_text += 1;
	audio_stop_sound(text_read_out);
	
	if (global.current_text > global.last_text)
	{
		audio_stop_sound(text_read_out);
		textEnd = true;
		global.active_quest = true;
		global.coins += 100;
		global.xp += 100;
		show_debug_message("Quest: " + string(global.current_quest));
		
	}
	
	else 
	{
		audio_play_sound(text_read_out, 3, true);
		text[global.current_text] = wrap_strings(text[global.current_text], text_width);
		current_char = 0;
	}
}

}
}
 






