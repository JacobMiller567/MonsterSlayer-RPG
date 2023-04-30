if (global.coins >= cost) 
{
	global.coins -= cost;
	
	if(global.health_level > 0) // Reset max health and current health
	{
		var health_reset  = global.health_level;
		global.max_health -= health_reset * 20;
		global.health -= health_reset * 20;
		global.health_level = 0;
		global.skill_points += health_reset;
	}
	
	if(global.strength_level > 0) // Reset player damage
	{
		var strength_reset  = global.strength_level;
		global.player_damage -= strength_reset;
		global.strength_level = 0;
		global.skill_points += strength_reset;
	}
	
	if(global.speed_level > 0) // Reset player speed
	{
		var speed_reset  = global.speed_level / 2; // speed increases by 0.5 so have to divide by 2
		global.player_speed -= speed_reset;
		global.speed_level = 0;
		global.skill_points += speed_reset;
	}
	
}