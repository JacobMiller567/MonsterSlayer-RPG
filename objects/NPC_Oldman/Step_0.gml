if (global.current_quest <= 1) {

	var target = instance_nearest(x,y,Player);
	if (target != noone) {
		if (point_distance(x,y,target.x,target.y) <= range) {//+sprite_width/2) {
		//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
			if (keyboard_check_pressed(ord("Z")) and !global.active_quest)
			{
				audio_play_sound(text_read_out, 3, false);
				player_detected = true;
			//	instance_shop_panel = instance_find(Text_Box, 0);
			}
		
			else {
				// Tell player they have a current quest active!
			}
		
		}
	
		else {
			player_detected = false;
			textEnd = false; 
			//current_text = 0;
		
		}
	}
} // TEST!!!



	if (instance_place(x, y+1, oGround)) { // If on ground set gravity to 0
		gravity = 0;
	}
	
	if !(instance_place(x, y+1, oGround)) { // If in air set gravity to 0.5
		gravity = 0.5;
	}

	if (instance_place(x+vspeed,y+vspeed,oGround)) { // If collides with platform set vspeed to 0
		vspeed = 0;
	}



	// Quests complete

	if (global.current_quest == 0 and global.quest_complete == true) // if quest 1 is complete
	{
		global.coins += 20;
		global.xp += 10;
		last_text = 9; 
		current_text = 5;
		global.current_quest += 1; // quest 2
		global.quest_complete = false;
		global.active_quest = false;
		//global.current_text = 1;
	}

//}
