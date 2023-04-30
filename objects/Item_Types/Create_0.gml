//item = choose(item_small_potion, item_big_potion, item_key, item_sword);
#region
item = item_small_potion;
getItem = BigPotion;
sprite_index = item_sprite;
//item_sold = false;
cost = 0;
item_name = "None";
heal_amount = 0;
#endregion




consume = function (amount = 1) {
	//Player.player_health += amount;
	if (global.health != global.max_health) { // if player does not have full hp
		global.health += amount;
	}
	
	if (global.health > global.max_health) // if hp is more than max hp then set health to max
	{
		global.health = global.max_health; 
	}
		
	
}




/*
consume = function() {
	global.health += heal_amount;
}
*/
	




// needed?
switch(item)
{
case item_small_potion:
	sprite_index = sPotion;
	break;
case item_big_potion:
	sprite_index = sBigPotion;
	break;
case item_key:
	sprite_index = sKey;
	break;
case item_sword:
	sprite_index = sSword;
	break;
}


	
	


