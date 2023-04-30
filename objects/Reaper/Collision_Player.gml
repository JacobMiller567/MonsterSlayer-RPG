if (canAttack and !enemy_dead) {
//other.player_health -= enemy_damage;
sprite_index = enemy_attack;
global.health -= enemy_damage;
canAttack = false;
alarm[0] = (room_speed * 0.5); // can only attack every half a second
}




