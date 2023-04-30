// Refernce: https://gamemaker.io/en/tutorials/coffee-break-tutorials-simple-inventory-gml

randomize();
#macro Inventory_Slots 4 // 4 Inventory slots
draw_set_font(Font1);
draw_set_halign(fa_right);
draw_set_halign(fa_bottom);

hidden = false;
hidden_count = 0;
show_y = y;
show_x = x;

item_position = 0; // item position in array
item_index = 0; // index postion of item
//item_array = array_create(4,[ ],[ ],[ ],[ ]); // creates 4 empty inventroy slots
//item_array = array_create(Inventory_Slots, item_type);

item_array = array_create(Inventory_Slots, -1);
for(var i = 0; i < 4; i += 1)
{
	item_array[i][item_type] = item_none;
	item_array[i][item_sprite] = -1;
	item_array[i][item_amount] = 0;
}




