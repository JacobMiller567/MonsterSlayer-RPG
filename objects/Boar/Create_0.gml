
event_inherited();

#region 
name = "Boar";
enemy_health = 45;
enemy_speed = 4;
enemy_damage = 6;
range = 150;
enemy_idle = sBoarIdle;
enemy_run = sBoarRun;
enemy_hurt = sBoarDamage;
getEnemy = self; // Boar
enemy_max_health = enemy_health;
coins_dropped = 10;
xp_dropped = 7;

#endregion

canAttack = true;
image_speed = 0.6;