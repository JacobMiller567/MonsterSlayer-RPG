var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) 
	{
		if (keyboard_check_pressed(ord("Z")))
		{
			audio_play_sound(snd_chests, 20, false);
			image_index = 1;
			alarm[0] = room_speed * 0.75;
		
			
		}
		
	}
}


