
event_inherited();

#region 
name = "Skeleton";
enemy_health = 100;
enemy_speed = 2.5;
enemy_damage = 15;
range = 230;
enemy_idle = sSkeletonIdle;
enemy_run = sSkeletonWalk;
enemy_hurt = sBoarDamage;
//enemy_death = sSkeletonDead
getEnemy = self; 
enemy_max_health = enemy_health;
coins_dropped = 20;
xp_dropped = 15;

#endregion

enemy_attack = sSkeletonAttack;
canAttack = true;
attack_range = 2;
image_speed = 0.65;