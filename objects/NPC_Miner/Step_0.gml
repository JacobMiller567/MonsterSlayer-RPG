if (global.current_quest <= 4) {
	var target = instance_nearest(x,y,Player);
	if (target != noone) {
		if (point_distance(x,y,target.x,target.y) <= range) {//+sprite_width/2) {
		//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
			
			if (keyboard_check_pressed(ord("Z")) and !global.active_quest)
			{
				player_detected = true;
				show_debug_message(string(global.quest[global.current_quest]));
			//	instance_shop_panel = instance_find(Text_Box, 0);
			}
		
			else {
				// Tell player they have a current quest active!
			}
		
		}
	
		else {
			player_detected = false;
			textEnd = false;
			//current_text = 0;
		
		}
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



	// Quests

	if (global.quest_complete == true and global.current_quest == 2) 
	{
		global.coins += 45;
		global.xp += 30;

		global.current_quest += 1;
	//	last_text = 7; 
	//	current_text = 3;
	
	    global.health += round((global.max_health - global.health) / 2);  // heal player for half of missing health

		global.quest_complete = false;
		global.active_quest = false;
	}


	if (global.quest_complete == true and global.current_quest == 3) 
	{
		global.coins += 85;
		global.xp += 65;
	//	current_quest += 1
		global.current_quest += 1;
	//	last_text = 12; 
	//	current_text = 8;
	//	quest_complete = false;
		global.quest_complete = false;
		global.active_quest = false;
	}



//}



