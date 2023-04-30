// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_potion(item, sprite){		
	var _pos = 0;
	var _type = item;
	var _sprite = sprite;
	

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
		item_array[_pos][item_amount] += 1;
		show_debug_message(string(item_type));
		show_debug_message("Array Pos: " + string(_pos));
		//with(other) instance_destroy();
		
		
	}
  }
  

}