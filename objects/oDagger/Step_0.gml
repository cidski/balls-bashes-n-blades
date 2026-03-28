if (collision_circle(x, y, 5, pP0, true, true))
{
	holder = instance_nearest(x, y, pP0);
	
	if (holder.isKeyboard == true)
	{
		mouseVectorAngle = point_direction(x, y, mouse_x, mouse_y);
	}
	else
	{
		var _stickX = gamepad_axis_value(holder.gamepadNo, gp_axisrh);
		var _stickY = gamepad_axis_value(holder.gamepadNo, gp_axisrv);
		
		mouseVectorAngle = point_direction(x, y, x + _stickX, y + _stickY);
	}
	
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