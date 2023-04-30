var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) 
	{
		if (keyboard_check_pressed(ord("Z")))
		{
			if (room == rRoom2) 
			{
				player_location(rRoom3, 80, 710, room); 
			//	room_goto(rRoom2);
			}
			if (room == rRoom3)
			{
				player_location(rRoom2, 3455, 690, room); 
			}
		}
	}
}


