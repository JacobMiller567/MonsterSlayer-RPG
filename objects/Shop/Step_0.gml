var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range) {//+sprite_width/2) {
	//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
		if (keyboard_check_pressed(ord("Z")))
		{
		//	player_location(rShop, target.x, target.y, room); // run location script
			player_location(rShop, x, y, room); // run location script
		//	global.player_position_x = target.x;
		//	global.player_position_y = target.y;
		//	room_goto(rShop);
			show_debug_message("Visiting Shop");
		//	instance_shop_panel = instance_find(Text_Box, 0);
		}
		
	}
	
}


