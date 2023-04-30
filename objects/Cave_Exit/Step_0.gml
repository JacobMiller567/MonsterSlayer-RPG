var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) 
	{
		if (keyboard_check_pressed(ord("Z")))
		{
			
			if (global.current_quest == 4) 
			{
				global.current_text = 0;
				global.last_text = 6;
			}
			
			
			if (room == rRoom3) 
			{
				player_location(rRoom4, 65, 710, room);
				//player_location(rRoom3, x, y, room);
			//	room_goto(rRoom2);
			}
			if (room == rRoom4)
			{
				player_location(rRoom3, 3455, 690, room); 
			}
		}
	}
}


