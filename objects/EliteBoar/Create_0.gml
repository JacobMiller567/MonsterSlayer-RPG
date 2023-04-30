
event_inherited();

#region 
name = "Boar";
enemy_health = 75;
enemy_speed = 5.5;
enemy_damage = 9;
range = 180;
enemy_idle = sEliteBoarIdle;
enemy_run = sEliteBoarRun;
enemy_hurt = sEliteBoarDamage;
getEnemy = self; 
enemy_max_health = enemy_health;
coins_dropped = 12;
xp_dropped = 10;

#endregion

canAttack = true;
image_speed = 0.6;