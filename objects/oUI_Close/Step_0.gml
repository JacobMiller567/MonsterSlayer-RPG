/// @description Insert description here
// You can write your code in this editor


if (parent != noone) {
	x = parent.bbox_left + 5;
	y = parent.bbox_bottom - 20;
}

gui_x = device_mouse_x_to_gui(0)
gui_y = device_mouse_y_to_gui(0)


if (point_in_rectangle(gui_x, gui_y, x, y, x + 11,y + 11)) {
	if (device_mouse_check_button(0, mb_left)) {
			parent.hide();
		}
	}




