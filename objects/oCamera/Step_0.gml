/// @desc Update Camera

// Find the bounding box of all players
if (instance_number(pP0) > 0)
{
	var _min_x = infinity, _max_x = -infinity;
	var _min_y = infinity, _max_y = -infinity;

	with (pP0)
	{
		_min_x = min(_min_x, x);
		_max_x = max(_max_x, x);
		_min_y = min(_min_y, y);
		_max_y = max(_max_y, y);
	}

	// Target center between all players
	xTo = (_min_x + _max_x) * 0.5;
	yTo = (_min_y + _max_y) * 0.5;

	// Zoom out until all players fit inside the view with padding
	var _pad = 200;
	var _req_w = (_max_x - _min_x) + _pad * 2;
	var _req_h = (_max_y - _min_y) + _pad * 2;
	zoom_target = clamp(max(_req_w / base_w, _req_h / base_h), zoom_min, zoom_max);
}

// Smoothly update position and zoom
x += (xTo - x) / 25;
y += (yTo - y) / 25;
zoom_scale += (zoom_target  - zoom_scale) / 25;

// Half-dimensions of the view at the current zoom level
var _vw_half = base_w * zoom_scale * 0.5;
var _vh_half = base_h * zoom_scale * 0.5;

// Clamp to room boundaries.
// max() allows camera to zoom more when the view is wider/taller than the room.
x = clamp(x, _vw_half, max(_vw_half, room_width  - _vw_half));
y = clamp(y, _vh_half, max(_vh_half, room_height - _vh_half));

// Apply updated view size and position
camera_set_view_size(cam, base_w * zoom_scale, base_h * zoom_scale);
camera_set_view_pos(cam,  x - _vw_half, y - _vh_half);

// TODO: Cid, this code will move background layers in parallax, if you want that.
// You just need to create 3 layers with these names put background art in them.

//if (layer_exists("BkgBack"))
//{
//	layer_x("BkgBack", x / 1.9);
//}

//if (layer_exists("BkgMiddle"))
//{
//	layer_x("BkgMiddle", x / 2);
//}

//if (layer_exists("BkgFront"))
//{
//	layer_x("BkgFront", x / 10);
//}