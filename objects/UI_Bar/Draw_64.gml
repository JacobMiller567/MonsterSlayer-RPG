
draw_self();
draw_set_font(Font2);

//instance_create_depth(800, 300, depth -1, oUI_Open);

/*
if (room == rRoom7)
{
	draw_set_font();
}
*/

//if !(room == rRoom7) { 

draw_set(1, c_white, function() {
	set_align(fa_left, fa_middle);
	
	draw_text_ext_transformed(40, 8, "Coins: " + string(global.coins),
		0, 200, 2, 2, 0)
	
	
	draw_text_ext_transformed(340, 8, "Level: " + string(global.level),
		0, 200, 2, 2, 0)

	
	
	draw_text_ext_transformed(640, 8,"XP Needed: " + string(global.xp) + "/" + string(global.xp_needed),
		0, 200, 2, 2, 0)
		
//    instance_create_depth(800, 300, depth -1, oUI_Open);
//	draw_sprite(sprite_index, oUI_Open, 700, 400);
		}

	);
//}

/*

if (room == rRoom7)
{
	draw_set_font(Font1);
	
	draw_set(1, c_white, function() {
	set_align(fa_left, fa_middle);
	
	draw_text_ext_transformed(35, 8, "Coins: " + string(global.coins),
		0, 200, 2, 2, 0)
	
	
	draw_text_ext_transformed(300, 8, "Level: " + string(global.level),
		0, 200, 2, 2, 0)

	
	
	draw_text_ext_transformed(580, 8,"XP Needed: " + string(global.xp) + "/" + string(global.xp_needed),
		0, 200, 2, 2, 0)
		
//    instance_create_depth(800, 300, depth -1, oUI_Open);
//	draw_sprite(sprite_index, oUI_Open, 700, 400);
		}

	);
}
	
*/

