enemy_health = 400;
enemy_speed = 2;
enemy_damage = 20;
range = 500;
attack_range = 2.4;
enemy_idle = sReaperIdle;
enemy_run = sReaperIdle;
enemy_attack = sReaperAttack;
enemy_hurt = sReaperDeath;
enemy_spawn = sReaperSpawn;
getEnemy = self; 
enemy_max_health = enemy_health;
coins_dropped = 1000;
xp_dropped = 1000;


canAttack = true;
spawning = false;
canSpawn = false;
lastStand = false;
attacking = false;
spawnSpeed = 5;
enemy_dead = false;

image_speed = 0.75;


damage_enemy = function (amount = 1) { // function that damages enemy
	enemy_health -= amount;
}