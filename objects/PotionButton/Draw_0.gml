
draw_set_colour(c_black);
draw_set_font(Font3);

draw_self();
if (mouse_hover(x,y,sprite_width,sprite_height)) {
set_align(fa_center, fa_middle);
draw_text(x, y + 60, "Small Potion");
draw_text(x,y + 85, "Price: $" + string(cost));
}