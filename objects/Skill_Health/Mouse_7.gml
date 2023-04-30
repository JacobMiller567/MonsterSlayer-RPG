// Give player 20 extra health and heal them for 20 health
if (global.skill_points >= 1) { 
	//Player.player_max_health += 20;
	//Player.player_health += 20
	global.max_health += 20;
	global.health += 20;
	global.skill_points -= 1;
	//Player.skill_health += 1;
	global.health_level += 1;
	
}
