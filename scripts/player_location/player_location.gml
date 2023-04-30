
function player_location(change_room, player_x, player_y, current_room) // used to spawn player by last location
{
	room_goto(change_room); // change rooms
	global.player_position_x = player_x; // save player x position
	global.player_position_y = player_y; // save player y position
//	room_goto(change_room); // change rooms
	global.last_room = current_room; // save player previous room

}