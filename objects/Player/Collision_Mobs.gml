if (attacking) {
	//other.damage_enemy(player_damage);
	other.damage_enemy(global.player_damage);
	canAttack = false;
	attacking = false;
	alarm[0] = (room_speed * 0.3);
	//other.sprite_height = sSnailHide

}

outside_combat = false;



