var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) 
	{
		if (keyboard_check_pressed(ord("Z")))
		{
			// If player has the key!!!
			if (global.current_quest == 5 and global.bossKey == true) 
			{
				sprite_index = sDoorOpen;
				global.active_quest = false;
				global.quest_complete = false;
				global.xp += 60;
				global.coins += 60;
				global.current_quest = 6;
				global.current_text = 0;
				global.last_text = 6;
				global.boss_fight = true;
				alarm[0] = room_speed * 1;
			}
		}
	}
}


