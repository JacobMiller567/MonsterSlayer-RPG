// Pause Option:

paused = false;
paused_ID = -1;




// Camera and viewports
view_enabled = true;

if (view_enabled == true) {

view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 960;
view_hport[0] = 540;


view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, Player, -1, -1, 400, 250);
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 480;
var _ypos = (_dheight / 2) - 270;
window_set_rectangle(_xpos, _ypos, 960, 540);

surface_resize(application_surface, 960, 540);
}


//camera_destroy(view_camera[0]);






//collision_tilemap = layer_tilemap_get_id("Collision_Tiles");







