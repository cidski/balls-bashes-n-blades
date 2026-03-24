var _hor = controllType(key_right) - controllType(key_left);
var _ver = controllType(key_down) - controllType(key_up);

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);

with (face)
{
	if (keyboard_check(other.key_right))
	{
		if (image_angle > -45)
		{
			image_angle -= 0.5;
		}
	}
	else if (keyboard_check(other.key_left))
	{
		if (image_angle < 45)
		{
			image_angle += 0.5;
		}
	}
	else
	{
		image_angle = 0;
	}
	
	//image_angle += -(other.phy_angular_velocity / 50);
}