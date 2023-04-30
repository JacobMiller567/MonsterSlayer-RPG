var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) {//+sprite_width/2) {
	//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
		if (keyboard_check_pressed(ord("Z")))
		{
			player_detected = true;
			show_debug_message("Within range");
		//	instance_shop_panel = instance_find(Text_Box, 0);
		}
		
	}
	
	else {
		player_detected = false;
		textEnd = false;
		current_text = 0;
		
	}
}



if (instance_place(x, y+1, oGround)) { // If on ground set gravity to 0
	gravity = 0;
}
	
if !(instance_place(x, y+1, oGround)) { // If in air set gravity to 0.5
	gravity = 0.5;
}

if (instance_place(x+vspeed,y+vspeed,oGround)) { // If boar collides with platform set vspeed to 0
	vspeed = 0;
}






