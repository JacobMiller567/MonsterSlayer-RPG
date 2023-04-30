

if (choose(1,2,3,4) >= 2) { // 3/4 chance

global.coins += choose(60, 90, 150);

}
else {
	// add_potion(BigPotion, sBigPotion);  // FIXXXX: Potions wont stack with ones bought!
	global.xp += 125;  // 1/4 chnace
}

ds_list_add(global.chest_id, id);
show_debug_message("Added: " + string(id));



