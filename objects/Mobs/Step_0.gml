if (enemy_health <= 0) {
	//sprite_index = enemy_hurt;
	//alarm[1] = (room_speed * 0.2)
	instance_destroy(getEnemy);
}

var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range+sprite_width/2) {
	//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
		player_detected = true;
		sprite_index = enemy_run;
	
		chase = target;
		
		if (player_detected and chase.x + 1.5 < x) {
			//face to the left
			x-= enemy_speed;
			image_xscale = 1;
		}
		else if (player_detected and chase.x - 1.5 > x) {
			//face to the right
			x+= enemy_speed;
			image_xscale = -1;
	
		}
		/*
		
		if (x - chase.x <  1)  // FIX: Stop enemy from overlapping and shaking on player
		{
			enemy_speed = 0;
		}
		*/
	}
	else {
		player_detected = false;
	}
	
}



if (!player_detected) {
	sprite_index = enemy_idle;
}



if (global.active_quest == true and global.current_quest == 0)
{
	NPC_Oldman.quest_amount(global.track_kills);
}

if (global.active_quest == true and room == rRoom2)
{
	NPC_Miner.quest_amount(global.track_kills);
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


		



