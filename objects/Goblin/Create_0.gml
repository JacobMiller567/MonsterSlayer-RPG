
event_inherited();

#region 
name = "Goblin";
enemy_health = 50;
enemy_speed = 6.5;
enemy_damage = 12;
range = 200;
enemy_idle = sGoblinIdle;
enemy_run = sGoblinRun;
enemy_hurt = sGoblinAttack;
//enemy_death = sSkeletonDead
getEnemy = self; 
enemy_max_health = enemy_health;
coins_dropped = 30;
xp_dropped = 35;

#endregion

enemy_attack = sGoblinAttack;
canAttack = true;
attack_range = 2.5;
image_speed = 0.65;

hsp = 0;
vsp = 0;
grv = 0.3;
