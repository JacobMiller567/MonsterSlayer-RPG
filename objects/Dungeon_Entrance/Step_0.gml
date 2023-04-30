var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) 
	{
		if (keyboard_check_pressed(ord("Z")))
		{
			
			if (room == rRoom5) 
			{
				player_location(rRoom7, 65, 750, room); 
			}
			if (room == rRoom7)
			{
				player_location(rRoom5, 3455, 715, room); 
			}
		}
	}
}


