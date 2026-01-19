// make sure rotation range 0-360
if (phy_rotation < 0)
{
	phy_rotation = 360 + phy_rotation;
}
else if (phy_rotation > 360)
{
	phy_rotation = phy_rotation - 360;
}

//angleLT = phy_rotation + 180;

//if (angleLT > 360)
//{
//	angleLT = angleLT - 360;
//}
//show_debug_message("angleLT" + string(angleLT));

//angleGT = phy_rotation - 90;
//if (angleGT < 0)
//{
//	angleGT = 360 + angleGT;
//}

//if (point_direction(x, y, mouse_x, mouse_y) > angleLT)
//{
//	phy_angular_velocity = phy_angular_velocity - 10;
//}
//else if (point_direction(x, y, mouse_x, mouse_y) < angleLT)
//{
//	phy_angular_velocity = phy_angular_velocity + 10;
//}

// phy_angular_velocity 0 to 500 speed clockwise, 0 to -500 counterclockwise
show_debug_message("ang_velocity: " + string(phy_angular_velocity));

// point_direction is 0 when mouse it to the right, counterclockwise to 360
show_debug_message("vector: " + string(point_direction(x, y, mouse_x, mouse_y)));

//show_debug_message("mouse cords: " + "(x: " + string(mouse_x) + " y: " + string(mouse_y) + ")");
//show_debug_message("rotation: " + string(phy_rotation));
