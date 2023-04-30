//event_inherited(); 
if (global.active_quest == true)
{
	if (global.current_quest == 2)
	{	
		global.track_kills += 1;
		show_debug_message("Kill : " + string(global.track_kills));
	}

}

if (global.level < 15)  // if player level is below 15
{
	global.coins += coins_dropped;
	global.xp += xp_dropped;
}

if (global.level >= 15)  // at level 15 increase xp of all mobs by 2
{
	global.coins += coins_dropped;
	global.xp += xp_dropped * 2;
}

