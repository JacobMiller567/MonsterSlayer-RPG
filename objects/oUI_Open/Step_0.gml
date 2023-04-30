
if (instance_shop_panel == noone) {
	instance_shop_panel = instance_find(oUI_Panel, 0);
	//instance_shop_panel = instance_find(oUI_Panel, -1)
}


x = lerp(x, Player.x, 0.06);
//y = lerp(y, position_current_y, 0.06);

if (room != rRoom7)
{
	//y = room_height - 350;
	y = Player.y - 200;
}
//x = room_width + 200;

if (room == rRoom7)
{
	y = Player.y - 85;
}

if (instance_exists(Player)){
//x = Player.x + 200;
//y = Player.y - 50;

}
