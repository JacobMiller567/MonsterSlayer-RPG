
event_inherited();

#region 
name = "EliteGoblin";
enemy_health = 75;
enemy_speed = 7;
enemy_damage = 14;
range = 250;
enemy_idle = sEliteGoblinIdle;
enemy_run = sEliteGoblinRun;
enemy_hurt = sEliteGoblinAttack;
//enemy_death = sSkeletonDead
getEnemy = self; 
enemy_max_health = enemy_health;
coins_dropped = 45;
xp_dropped = 55;

#endregion

enemy_attack = sEliteGoblinAttack;
canAttack = true;
attack_range = 2.5;
image_speed = 0.65;


hsp = 0;
vsp = 0;
grv = 0.3;
