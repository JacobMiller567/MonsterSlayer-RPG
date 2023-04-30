
event_inherited();

#region 
name = "Snail";
enemy_health = 25;
enemy_speed = 1;
enemy_damage = 4;
range = 125;
enemy_idle = sSnailIdle;
enemy_run = sSnailWalk;
enemy_hurt = sSnailHurt;
getEnemy = self;
enemy_max_health = enemy_health;
coins_dropped = 6;
xp_dropped = 4;

#endregion

canAttack = true;
image_speed = 0.6;