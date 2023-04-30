/// Source/Reference: https://gamemaker.io/en/tutorials/coffee-break-tutorials-pausing-your-game-gml ///

/*
if paused == true
{
if !surface_exists(paused_ID)
    {
    if paused_ID == -1
        {
        instance_deactivate_all(true);
        }
   // paused_ID = surface_create(room_width, room_height);
	paused_ID = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));
    surface_set_target(paused_ID);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
	
	
	else  // (_xpos, _ypos, 960, 540);
    {
    draw_surface(paused_ID, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
//  draw_text_transformed_color(bbox_left + 150, bbox_bottom + 300, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	draw_text_transformed_color(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
}


*/
