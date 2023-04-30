// used to skip text

//Reference- https://gamemaker.io/en/tutorials/coffee-break-tutorial-easy-typewriter-dialogue-gml


if (player_detected) {
	/*
	if (global.current_text == 9)
	{
		instance_destroy(self);	
	}
	*/
	
	
	if (!textEnd) {
		
		//audio_play_sound(text_read_out, 3, true);

		var len = string_length(text[global.current_text]);

		if (current_char < len)
		{
			current_char = len;
		}

		else 
		{
			global.current_text += 1;
			audio_stop_sound(text_read_out);
	    //	audio_play_sound(text_read_out, 3, true);
			if (global.current_text > global.last_text)
			{
				textEnd = true;
				audio_stop_sound(text_read_out);
				global.active_quest = true;
			}
		
		
	
			else 
			{
				audio_play_sound(text_read_out, 3, true);
				text[global.current_text] = wrap_strings(text[global.current_text], text_width); 
				current_char = 0;
			
		//	audio_stop_sound(text_read_out);
			}
		}
	}
}
 






