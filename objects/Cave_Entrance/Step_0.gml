
//if (global.current_quest >= 1) {
if (instance_exists(Player)) {
	var target = instance_nearest(x,y,Player);
	if (target != noone) {
		if (point_distance(x,y,target.x,target.y) <= range) 
		{
			if (keyboard_check_pressed(ord("Z")) and global.current_quest >= 1)
			{
				show_debug_message(string(global.quest[global.current_quest]));
				if (global.current_quest == 1)
				{
					global.active_quest = false;
					global.quest_complete = false;
					global.xp += 5;
					global.coins += 10;
					global.current_quest = 2;
					global.current_text = 0;
					global.last_text = 2;
					audio_play_sound(sndQuestComplete, 30, false);
					global.health += round(global.max_health - global.health);  // heal player for missing health
					//show_debug_message(string( (global.max_health - global.health) / 2)); // heal player for half of missing health
					show_debug_message(string(global.quest[global.current_quest]));
				}
				if (room == rRoom1) 
				{
					player_location(rRoom2, 20, 730, room); // go to room 2, set player position, save last room
					
				}
				if (room == rRoom2)
				{
					player_location(rRoom1, 3420, 670, room); 
				//	room_goto(rRoom1);
				}
			}
		}
	}
}



