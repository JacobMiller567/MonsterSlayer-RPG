draw_self();
draw_set_font(Font2);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

//draw_self();
draw_text(bbox_left + 80, bbox_bottom - 490, "Skill Points: " + string(global.skill_points)); // Display availabe skill points

			// Display Skills: 
draw_text(bbox_left + 10, bbox_bottom - 410, "Damage");
draw_text(bbox_left + 95, bbox_bottom - 410, "Health");
draw_text(bbox_left + 180, bbox_bottom - 410, "Speed");



			// Display Skill Levels: 
draw_text(bbox_left + 5, bbox_bottom - 305, "Level: " + string(global.strength_level));
draw_text(bbox_left + 90, bbox_bottom - 305, "Level: " + string(global.health_level));
draw_text(bbox_left + 175, bbox_bottom - 305, "Level: "+ string(global.speed_level));


// Display Unlocked Ability:

if (global.level >= 5)
{
	draw_text(bbox_left + 30, bbox_bottom - 150, "Ability Unlocked: Fireball");
	draw_set_font(Font6);
	draw_text(bbox_left + 5, bbox_bottom - 125, "(use ability by pressing 'f' near an enemy)");
	
}