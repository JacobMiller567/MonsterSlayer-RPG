
//sprite_index = sGhostAppear;
//justSpawned = true;
enemy_health = 15;
enemy_speed = 6;
enemy_damage = 12;
range = 650;
enemy_idle = sGhostIdle;
enemy_run = sGhostIdle;
//enemy_hurt = sReaperDeath;
getEnemy = self; 
enemy_max_health = enemy_health;
coins_dropped = 15;
xp_dropped = 20;

canAttack = true;
image_speed = 0.8;

damage_enemy = function (amount = 1) { // function that damages enemy
	enemy_health -= amount;
}