/*
var _sprite = item_array[item_position][item_sprite];

if (mouse_hover(mouse_x,mouse_y,sprite_width,sprite_height)) {
	var item_x = item_position * 22;
	var xx = bbox_left + 30;
	var yy = bbox_top + 20;
	set_align(fa_center, fa_middle);
	draw_sprite(sPanel, item_index, xx + item_x, yy);
	show_debug_message("DISPLAY");
//draw_text(x, y + 15, "Small Potion");

}
*/

if (room == rShop)
{
	y = 0;
	x = 0;
}
else 
{
	y = show_y;
	x = show_x;
}

if (room == rGameover)
{
	y = -100;
	x = -250;
}

if (global.boss_fight == true)
{
	for (var i = 0; i < 4; i+=1)
	{
	
		if ((item_array[i][item_amount]) > 0)
		{
			item_position = i;
		    var _type = item_array[item_position][item_type];
		    var _sprite = item_array[item_position][item_sprite];
	
			if ((item_array[item_position][item_amount]) > 0) {
				item_array[item_position][item_amount] += -1;
			}
		    var _inst = instance_create_layer(mouse_x, mouse_y, "Manage", Item_Types);
		//	if (position_meeting(mouse_x, mouse_y, id)) {
		
		    with(_inst)		
		        {
					item = _type;
					sprite_index = _sprite;
				
					if(sprite_index == sKey) {
						instance_destroy(_inst);
					}
		        }
		    if (item_array[item_position][item_amount] < 1)
		        {
		        item_array[item_position][item_type] = item_none;
				
				global.boss_fight = false;
		        }

		}
	}
}


