
if (enemy_health <= 0) {
	sprite_index = enemy_hurt;
	//alarm[1] = (room_speed * 0.2)
	enemy_dead = true;
	alarm[3] = room_speed * 3;
}

if (!enemy_dead) {

	var target = instance_nearest(x,y,Player);
	if (target != noone) {
		if (point_distance(x,y,target.x,target.y) <= range+sprite_width/2) {
		//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
			player_detected = true;
			//sprite_index = enemy_run;
	
			chase = target;
		
			if (canSpawn and !spawning) 
			{ 
				sprite_index = enemy_spawn;
				spawning = true;
				var ghost = instance_create_depth(x,y,-9,Ghost);
				//fire.speed = 9;
				ghost.direction = point_direction(x,y,target.x,target.y);
				alarm[1] = room_speed * spawnSpeed;
			}
		
		
			if (player_detected and chase.x + 2 < x) 
			{
				sprite_index = enemy_run;
				//face to the left
				x-= enemy_speed;
				image_xscale = -1;
			}
			else if (player_detected and chase.x - 2 > x) 
			{
				sprite_index = enemy_run;
				//face to the right
				x+= enemy_speed;
				image_xscale = 1;
			}
		
			else if (player_detected and (chase.x + attack_range <= x or chase.x - attack_range >= x))
			{
			
			//	show_debug_message("IN ATTACK RANGE");
				sprite_index = enemy_attack;
			//	attacking = true;
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
	
		if (enemy_health <= (enemy_max_health / 2) and !canSpawn) // if boss is at half health
		{
			// use ability
			show_debug_message("Reaper is Enraged!!!");
			x = room_width / 2; // teleport boss to middle of the room
			canSpawn = true; // allow boss to start summoning minions
		}
	
		if (enemy_health <= (enemy_max_health / 4) and !lastStand) // boss is at 1/4 hp
		{
			lastStand = true; // 
			spawnSpeed = (spawnSpeed / 2); // reduce spawn speed by half
			enemy_damage += 5; // increase boss damage by 5
			enemy_health += 100; // heal boss for 100 hp
			show_debug_message("Reaper's Last Stand!!");
		}
	}


	if (!player_detected) {
		sprite_index = enemy_idle;
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

