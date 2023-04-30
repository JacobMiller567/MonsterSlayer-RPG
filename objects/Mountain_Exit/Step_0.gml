var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) 
	{
	//	if (keyboard_check_pressed(ord("Z")))
	//	{
			
				show_debug_message(string(global.quest[global.current_quest]));
				if (global.current_quest == 4)
				{
					global.active_quest = false;
					global.quest_complete = false;
					global.xp += 50;
					global.coins += 40;
					global.current_quest = 5;
					global.current_text = 0;
					global.last_text = 6;
				}
					
			if (room == rRoom4) 
			{
				player_location(rRoom5, 160, 730, room); 
			}
			if (room == rRoom5)
			{
				player_location(rRoom4, 3330, 670, room); 
			}
		}
	//}
}


