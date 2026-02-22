var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);

if (place_meeting(x, y, [oSwordP2, oSpike, oSledgeHammmerP1]))
{
	instance_destroy()
}

//phy_rotation = point_direction(x, y, mouse_x, mouse_y);

// make sure rotation range 0-360
//if (phy_rotation < 0)
//{
//	phy_rotation = 360 + phy_rotation;
//}
//else if (phy_rotation > 360)
//{
//	phy_rotation = phy_rotation - 360;
//}

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
//show_debug_message("ang_velocity: " + string(phy_angular_velocity));

// point_direction is 0 when mouse it to the right, counterclockwise to 360
show_debug_message("pointer vector: " + string(point_direction(x, y, mouse_x, mouse_y)));

//show_debug_message("mouse cords: " + "(x: " + string(mouse_x) + " y: " + string(mouse_y) + ")");
show_debug_message("sword rotation: " + string(abs(phy_rotation % 360)));
