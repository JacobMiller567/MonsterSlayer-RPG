if (canAttack) {
//other.player_health -= enemy_damage;
global.health -= enemy_damage;
canAttack = false;
alarm[0] = (room_speed * 0.5); // can only attack every half a second
}




