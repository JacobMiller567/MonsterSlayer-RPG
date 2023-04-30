
draw_self();
draw_set_font(Font2);
var item_x = item_position * 64;
var xx = bbox_left + 32;
var yy = bbox_top + 32;
//draw_sprite(sPanel, item_index, xx + item_x, yy+32);

item_index += 0.25;
for(var i = 0; i < 4; i += 1)
{
	if !(item_array[i, item_type] == item_none) // item slot is not empty
	{
		draw_sprite(item_array[i, item_sprite], 0, xx, yy);
		draw_text(xx + 10, yy + 11, string(item_array[i, item_amount]));
	}
	
	xx += 64;
	//return;
	//break;
	
}





