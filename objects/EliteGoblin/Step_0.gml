

if (enemy_health <= 0) {
	//sprite_index = enemy_hurt;
	//alarm[1] = (room_speed * 0.2)
	instance_destroy(getEnemy);
}

var _solid_collision = place_meeting(x, y + 3, oSolids); // ground collisions
vsp += grv; 
//hsp = enemy_speed * image_xscale;
var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= range+sprite_width/2) {
	//if (point_distance(x,y,target.x,y) <= range+sprite_width/2) {
		player_detected = true;
		//sprite_index = enemy_run;
		chase = target;
		// // set horizontal speed
		//hsp = enemy_speed * image_xscale;
	//	vsp += grv;  
	if  (!place_meeting(x + hsp, y +vsp, oWall) or !place_meeting(x, y, oWall)){ //and !place_meeting(x,y,oSolids)) {
	
		
		if (player_detected and chase.x + 5.5 < x) 
		{
			sprite_index = enemy_run;
			//face to the left
			//x-= enemy_speed;
			image_xscale = -1;
			hsp = enemy_speed * image_xscale;
			
		}
		else if (player_detected and chase.x - 5.5 > x) 
		{
			sprite_index = enemy_run;
			//face to the right
		//	x+= enemy_speed;
			image_xscale = 1;
			hsp = enemy_speed * image_xscale;
			
		}
		
		else if (player_detected and (chase.x + attack_range <= x or chase.x - attack_range >= x))
		{
			
			//show_debug_message("IN ATTACK RANGE");
			sprite_index = enemy_attack;
			hsp = 0;
			//	attacking = true;
		}
		/*
		var _arr = move_and_collide(hsp, vsp, oSolids);
		if array_length(_arr) != 0 and place_meeting(x,y +vsp, oSolids) vsp = 0
		if( _solid_collision and !place_meeting(x, y + 3, oGround) and vsp > 0) {
		while !place_meeting(x, y +1, oSlope) y+=1;
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

// Slope downwards movement 
if( _solid_collision and !place_meeting(x, y + 4, oGround) and vsp > 0) {
	var i = 0;
	while !place_meeting(x, y +1, oSlope) //y+=1;
		{
			y+=1; 
			i+= 1;
			
			if (i >= 30) // Potential Fix: Stop infinite loop
			{
				break;
			}
		}
	}




// Move and collide
var _arr = move_and_collide(hsp, vsp, oSolids);
if array_length(_arr) != 0 and place_meeting(x,y +vsp, oSolids) vsp = 0;

}


// FIX: Pushes player slightly down the slope by a few pixels
if place_meeting(x, y +4, oSlope) // makes it so player doesn't get stuck on slopes when chnaging directions/standing still
{
	y-=0.2; // push player slighlty above the slope
	//vsp = 0;
}

if (place_meeting(x+hsp,y+vsp,oGround)) 
	{
		for (var i = 0; i < 500; ++i) 
		{
			if (!place_meeting(x, y-i, oGround))
			{
				y-=i;
				break;
			}
		}
	}


if (place_meeting(x,y, oWall)) {
	for (var i = 0; i < 500; ++i) {
		// Right
		if(!place_meeting(x + i, y, oWall)){
			x+=i;
			break;
		}
		// Left
		if(!place_meeting(x - i, y, oWall)){
			x-=i;
			break;
		}
		// Up
		if(!place_meeting(x, y - i, oWall)){
			y-=i;
			break;
		}
		//Down 
		if(!place_meeting(x, y + i, oWall)){
			y+=i;
			break;
		}
		// Top Right
		if(!place_meeting(x + i, y - i, oWall)){
			x+=i;
			y-=i;
			break;
		}
		// Top Left
		if(!place_meeting(x - i, y - i, oWall)){
			x-=i;
			y-=i;
			break;
		}
		// Bottom Right
		if(!place_meeting(x + i, y + i, oWall)){
			x+=i;
			y+=i;
			break;
		}
		// Bottom Left
		if(!place_meeting(x - i, y + i, oWall)){
			x-=i;
			y+=i;
			break;
		}
	}
}

