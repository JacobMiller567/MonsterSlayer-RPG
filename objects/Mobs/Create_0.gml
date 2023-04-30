#region 
	name = "none";
	enemy_health = 0;
	enemy_speed = 0;
	enemy_damage = 0;
	range = 0;
	enemy_idle = sBoarIdle;
	enemy_run = sBoarRun;
	enemy_hurt = sBoarDamage;

	enemy_max_health = enemy_health;
	coins_dropped = 0;
	xp_dropped = 0;
#endregion

player_detected = false;
chase = noone;
canAttack = true;
//amount_killed = 0;

damage_enemy = function (amount = 1) { // function that damages enemy
	enemy_health -= amount;
}


