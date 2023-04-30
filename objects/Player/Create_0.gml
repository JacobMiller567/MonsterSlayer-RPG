image_speed = 0.7;
//gravity_direction = 270;


// Player Animations
isIdle = true;
attacking = false;
canAttack = true;

attack_cooldown = room_speed * 0.25;
canSwing = true;

// Player Vitals
//player_health = 100; // 100 Health Default
//player_max_health = player_health;

// Player Health is stored in a global variable! //

//player_speed = 6; 
//player_damage = 10;
jump_height = -10;
vsp = 0;
hsp = 0;
//canJump = 0;
grv = 0.3;
slope_max = 4;


// Player XP Needed For Level
//xp_needed = 10; // 30 xp to reach level 2

if (global.current_quest >= 1) {
x = global.player_position_x;
y = global.player_position_y;
}

// Fireball Ability:
enemy_target = noone;
shooting = false;



// Player Skill Levels
/*
health_level = 0; // Health skill level

strength_level = 0; // Damage skill level

speed_level = 0; // Speed skill level
*/

level_up = function (amount = 1) { // function that upgrades player level
	if (amount >= global.xp_needed and global.level < 26) // Max Level is 25
	{
		global.xp -= global.xp_needed;
		global.level += 1;
		global.skill_points += 1;
		global.xp_needed = round((global.xp_needed * 2) - (global.xp_needed / 2)); // First 5 levels xp example: 15, 23, 35, 53, 80 ...
		
		
		
		if (global.level == 5) // unlock fireball skill at level 5
		{
			show_debug_message("Fireball Ability Unlocked!");
			global.fireball = true;
		}
		if (global.level == 10) // increase damage by 5 when player reaches level 10
		{
			show_debug_message("Fireball Damage and Speed Increased!");
			global.fire_damage = 20;
			global.cool_down = room_speed * 2; // fire ball every 2 seconds
		}
		
		if (global.level == 15) // increase damage by 5 and range by 50 when player reaches level 15 
		{
			show_debug_message("Fireball Damage and Range Increased!");
			global.fire_damage = 25;
			global.fire_range = 250;
		}
		
		if (global.level == 20) // increase damage by 10 when player reaches level 20
		{
			show_debug_message("Fireball Damage Maxed! Speed Maxed!");
			global.fire_damage = 35;
			global.cool_down = room_speed * 1; // fire ball per second
		}
		if (global.level == 25) // increase fireball range by 100
		{
			show_debug_message("Fireball Range Maxed");
			global.fire_range = 350;
		}
	}
	
	
}




