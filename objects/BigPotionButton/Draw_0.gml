draw_set_colour(c_black);
draw_set_font(Font3);
if (position_meeting(mouse_x, mouse_y, id)) {
	draw_set_colour(c_black);
	draw_set_font(Font3);
}

draw_self();
if (mouse_hover(x,y,sprite_width,sprite_height)) {
set_align(fa_center, fa_middle);
draw_text(x, y + 65, "Big Potion");
draw_text(x,y + 85, "Price: $" + string(cost));
}





