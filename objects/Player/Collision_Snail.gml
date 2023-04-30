if (instance_exists(other))
{
	if (attacking and canAttack) {
		audio_play_sound(sndSword_Slash, 5, false);
		//other.damage_enemy(player_damage);
		other.damage_enemy(global.player_damage);
		canAttack = false;
		attacking = false;
		alarm[0] = (room_speed * 0.5);
		//other.sprite_height = sSnailHide

	}
}







