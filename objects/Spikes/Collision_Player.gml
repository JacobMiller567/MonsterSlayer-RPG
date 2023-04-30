
if (canDamage) {
	global.health -= damage;
	canDamage = false;
	alarm[0] = room_speed * 1;
	player_location(room, 120, 500, room); // spawn player at start of current room
	//room_restart();
}


