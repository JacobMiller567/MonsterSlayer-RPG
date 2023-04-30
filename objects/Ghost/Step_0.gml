
/*
if (instance_place(x, y+1, oGround)) { // If on ground set gravity to 0
	gravity = 0;
}
	
if !(instance_place(x, y+1, oGround)) { // If in air set gravity to 0.5
	gravity = 0.5;
}

if (instance_place(x+vspeed,y+vspeed,oGround)) { 
	vspeed = 0;
}
*/


if (enemy_health <= 0) {
//	sprite_index = enemy_hurt;
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
		
		if (player_detected and chase.x + 1 < x) {
			//face to the left
			x-= enemy_speed;
			image_xscale = 1;
		}
		else if (player_detected and chase.x - 1 > x) {
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