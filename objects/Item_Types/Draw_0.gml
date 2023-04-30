	
	draw_set_font(Font2);
	draw_self();
	if (mouse_hover(x,y,sprite_width,sprite_height)) {
	set_align(fa_center, fa_middle);
	draw_text(x, y + 30, item_name);
	draw_text(x,y + 50, "Price: $" + string(cost));
	}





