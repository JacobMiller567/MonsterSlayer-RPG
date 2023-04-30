image_index = 0;
image_speed = 0;
range = 40;
coins = 0;


chest_id = ds_list_find_index(global.chest_id, id) // all chest_id are -1 until opened
show_debug_message(chest_id);
if (chest_id >= 0) // check if chest has been opened
{
	instance_deactivate_object(self); // deactivate opened chests
}
