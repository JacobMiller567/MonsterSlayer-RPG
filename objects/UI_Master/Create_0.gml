
instance_create_depth(0, 0, depth, UI_Bar); 
instance_create_depth(75, 300, depth, oUI_Open);
instance_create_depth(15, 65, depth, Inventory);


/*
if (room == rRoom7)
{
	global.changeSong = true;
}

if (global.changeSong == true)
{
	audio_pause_sound(sndMusic_Calm);
	audio_play_sound(sndMusic_Intense, 80, true);
}
*/

instance_destroy();


