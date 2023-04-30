if ((item_array[3][item_amount]) > 0)
{
	item_position = 3;
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
			
			if (sprite_index == sBigPotion)
			{
				_inst.consume(100);
				audio_play_sound(pour_drink, 3, false);
				//_inst.consume(_inst.heal_amount);
			}
			if (sprite_index == sPotion) 
			{
				_inst.consume(20);
				audio_play_sound(pour_drink, 3, false);
			}
			
			if(sprite_index != sKey) {
				instance_destroy(_inst);
			}
        }
    if (item_array[item_position][item_amount] < 1)
        {
        item_array[item_position][item_type] = item_none;
        }

}