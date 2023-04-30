draw_self();
//var amount = (player_health /(player_max_health))* 100;
var amount = (global.health /(global.max_health))* 100;

var sprite_half = 64/2;

draw_healthbar(
	x - sprite_half,
	y + 32,
	x + sprite_half,
	y + 34,
	amount,
	c_black, c_red, c_red,
	0, true, false
);
