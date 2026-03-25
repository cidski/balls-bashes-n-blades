if (isKeyboard == true)
{
var _hor = keyboard_check(key_right) - keyboard_check(key_left);
var _ver = keyboard_check(key_down) - keyboard_check(key_up);
}
else
{
	var _hor = gamepad_button_check(gamepadNo, key_right) - gamepad_button_check(gamepadNo, key_left);
	var _ver = gamepad_button_check(gamepadNo, key_down) - gamepad_button_check(gamepadNo, key_up);
}

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