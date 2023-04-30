if (choose(1,2,3) >= 2) {

coins = choose(10, 15, 25, 35); // 66% to get coins
global.coins += coins;
// display coins being added: + 10 coins
draw_text(x, y - 20, "+ " + string(coins));
show_debug_message( "+ " + string(coins));
}
else {
	global.xp += 25; // 33% chnace for xp
	// add_potion(SmallPotion, sPotion); // 33% to get small potion   FIXXXXX!
}

ds_list_add(global.chest_id, id); // stop chest from respawning
show_debug_message("Added: " + string(id));


