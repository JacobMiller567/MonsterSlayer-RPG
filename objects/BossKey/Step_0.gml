
var target = instance_nearest(x,y,Player);
if (target != noone) {
	if (point_distance(x,y,target.x,target.y) <= pickupRange) 
	{
		if (keyboard_check_pressed(ord("Z")))
		{
			keyPickup = true;
			global.bossKey = true;
			alarm[0] = room_speed * 0.25;
		}
	}
}





if (keyPickup)
{
	// Pickup Item:
	
	var _pos = 0;
	var _type = item;
	var _sprite = sprite_index;
	

	with(Inventory)
	{
		while (_pos < 4) //while
			{
			if (item_array[_pos][item_type] == _type)
				{
				break;
				}
			else
				{
				_pos += 1;
				}
			}
		if (_pos > 3)
			{
			_pos = 0;
			while (_pos < 4)
				{
				if (item_array[_pos][item_type] == item_none)
					{
					break;
					}
				else
					{
					_pos += 1;
					}
				}
			}
	if (_pos < 4)
	{
		item_array[_pos][item_type] = _type;
		item_array[_pos][item_sprite] = _sprite;
		item_array[_pos][item_amount] = 1;
	//	show_debug_message(string(item_type));
	//	show_debug_message("Array Pos: " + string(_pos));
		
		
	}
  }
  
  
}



