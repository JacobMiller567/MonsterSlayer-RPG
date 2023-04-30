
//var key_right = keyboard_check(vk_right);
//var key_left = keyboard_check(vk_left);
//var key_jump = keyboard_check_pressed(vk_space);

var key_right = (keyboard_check(vk_right) or keyboard_check(ord("D"))); // right
var key_left = (keyboard_check(vk_left) or keyboard_check(ord("A"))); // left
var key_jump = (keyboard_check_pressed(vk_up) or keyboard_check(ord("W"))); // jump
var key_attack = ((keyboard_check(vk_down)) or (keyboard_check(ord("S")))) // attack



_move = key_right - key_left; // movement


var _solid_collision = place_meeting(x, y + slope_max, oSolids); // ground collisions


hsp = _move * global.player_speed; // set horizontal speed

vsp += grv; 

if  (!place_meeting(x + hsp, y +vsp, oWall) or !place_meeting(x, y, oWall)){ //and !place_meeting(x,y,oSolids)) {
	
if (_move >= 1)
{
	sprite_index = sPlayerRun76
	image_xscale = 1;
//	show_debug_message("RIGHT");
	isIdle = false;
}

if (_move <= -1)
{
	sprite_index = sPlayerRun76;
	image_xscale = -1;
//	show_debug_message("Left");
	isIdle = false;
}

if (!key_left and !key_right and !key_jump and !key_attack and _solid_collision and hsp == 0) // if not pressing any keys
{
	isIdle = true;
	//show_debug_message("IDLE");
}

if (key_jump and _solid_collision)
{
	y -= 2; // prevents player getting stuck in sprites when trying to jump
	vsp = jump_height; // apply jump force
	sprite_index = sPlayerJump; // set to jump sprite
	isIdle = false; // not idle
	//show_debug_message(y);
}

if (key_attack and _solid_collision and canSwing) //TEST? Sometimes game freezes when hitting enemies while in the air
{
	//sprite_index = sPlayerAttack;	
	sprite_index = sPlayerAttackTest;	
	attacking = true; // player is attacking
	isIdle = false;
}

if((keyboard_check_released(vk_down)) or (keyboard_check_released(ord("S")))) // prevents player from spamming attack which freezes game
{
	canSwing = false;
	alarm[2] = attack_cooldown;
}

if (!key_attack)
{
	attacking = false; // not attacking
}


// Slope downwards movement 

if (room == rRoom5 or room == rRoom7) {   //Placeholder fix for error
	//if( _solid_collision and !place_meeting(x, y + slope_max, oGround) and vsp > 0) {
	//	while !place_meeting(x, y +1, oSlope) y+=1; // ERROR!
	
	if( _solid_collision and !place_meeting(x, y + slope_max, oGround) and vsp > 0) {
		var i = 0;
		while !place_meeting(x, y +1, oSlope) // ERROR!
		{
			y+=1; 
			i+= 1;
			
			if (i >= 30) // Potential Fix: Stop infinite loop
			{
				break;
			}
		}
	}
}


// Move and collide
var _arr = move_and_collide(hsp, vsp, oSolids);
if array_length(_arr) != 0 and place_meeting(x,y +vsp, oSolids) vsp = 0;

}

// FIX: Pushes player slightly down the slope by a few pixels
if place_meeting(x, y +slope_max, oSlope) // makes it so player doesn't get stuck on slopes when chnaging directions/standing still
{
	y-=0.3; // push player slighlty above the slope
	//vsp = 0;
}

/*
if (place_meeting(oLadder, x+hsp, y+vsp))
{
	var platform = instance_place(x +hsp, y+vsp, oJumpPlatform)
	if (platform != noone)
	{
		if (bbox_bottom <= platform.bbox_top)
		{
			y-=1;
		}
	}
	
}
*/

if (room != rRoom4) // player glitches into mountain if used in Room4
{

	// Stop player getting stuck in ground
	if (place_meeting(x+hsp,y+vsp,oGround) and attacking == false) 
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
}


// Stop player getting glitched in walls: 
// https://www.youtube.com/watch?v=WPdMw8jt0aU
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



if (isIdle) { // if player is idle
	//sprite_index = sPlayerIdleOrig;
	sprite_index = sPlayerIdle; // set idle sprite
	level_up(global.xp); // Check if player can level up
}

if (global.health < 1) // if player is at 0 health
{
	//instance_destroy(self);
	global.death_count += 1;
	show_debug_message("Death: " + string(global.death_count));
	global.health = (global.max_health / 2); // set player to half hp
	global.coins = round(global.coins / 2); // set coins to half
	player_location(rRoom1, 25, 752, rRoom1); // spawn back in starting room
}


if (global.fireball == true and keyboard_check(ord("F"))) // must unlock fireball to use it
{
	var target = instance_nearest(x,y,Mobs); // find closest enemy
	if (target != noone) { // if enemy is not null
		if (point_distance(x,y,target.x,target.y) <= global.fire_range+sprite_width/2) // enemy must be in range to shoot fireball
		{
			if (!shooting) { // if we have not already shot
				shooting = true;
				audio_play_sound(snd_fireball, 15, false);
				var fire = instance_create_depth(x,y,-9,Fireball); // create fireball
				fire.speed = 9;
				fire.direction = point_direction(x,y,target.x,target.y); // set directio nto enemy position
				alarm[1] = global.cool_down; // call cooldown
			}
			enemy_target = target; // set enemy to be our target
		
		}
		else 
		{
			enemy_target  = noone; // set target to be none
		}
	}
	
	
}

if (global.death_count >= 2) // if player has died twice
{
	room_goto(rGameover); // Game Over
}

