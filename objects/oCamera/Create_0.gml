/// @desc Create Camera

cam = view_camera[0];
base_w = camera_get_view_width(cam);
base_h = camera_get_view_height(cam);
xTo = xstart;
yTo = ystart;
zoom_scale  = 1.0;
zoom_target = 1.0;
zoom_min    = 1.0;  // never zoom in tighter than the base view
zoom_max    = 3.0;  // furthest zoom-out allowed