if (isKeyboard == true)
{
	mouseVectorAngle = point_direction(x, y, mouse_x, mouse_y);
	
	idColDot.x = x + cos(mouseVectorAngle * pi / 180) * 80;
	idColDot.y = y + -sin(mouseVectorAngle * pi / 180) * 80;
	
	if (idColLeft.collisionWithMouse == true)
	{
		phy_angular_velocity -= 50;
	}
	else if (idColRight.collisionWithMouse == true)
	{
		phy_angular_velocity += 50;
	}
	phy_angular_velocity = phy_angular_velocity * 0.90;
}
else
{
	var _stickX = gamepad_axis_value(gamepadNo, gp_axisrh);
	var _stickY = gamepad_axis_value(gamepadNo, gp_axisrv);
	
	mouseVectorAngle = point_direction(x, y, x + _stickX, y + _stickY);
	
	idColDot.x = x + cos(mouseVectorAngle * pi / 180) * 80;
	idColDot.y = y + -sin(mouseVectorAngle * pi / 180) * 80;
	
	if ((_stickX > 0.1 || _stickX < -0.1) && (_stickY > 0.1 || _stickY < -0.1))
	{
		if (idColLeft.collisionWithMouse == true)
		{
			phy_angular_velocity -= 30;
		}
		else if (idColRight.collisionWithMouse == true)
		{
			phy_angular_velocity += 30;
		}
		phy_angular_velocity = phy_angular_velocity * 0.95;
	}
}