if (place_meeting(x, y, [oWall, oWallWedge, oWallCircle]))
{
	with (oP1WithHatchet)
	{
		if (holdingItem = false)
		{
			other.phy_active = false;
			if (other.stuck = false)
			{
				//other.stuckX = other.x;
				//other.stuckY = other.y;
				//other.stuckRot = other.phy_rotation;
				
				//other.stuck = true;
			}
		}
		else
		{
			//other.stuck = false
		}
	}
}

//if (stuck = true)
//{
//	phy_position_x = stuckX;
//	phy_position_y = stuckY;
//	phy_rotation = stuckRot;
	
//	if (phy_position_x > stuckX)
//	{
//		phy_speed_x++;
//	}
	
//	if (phy_position_x < stuckX)
//	{
//		phy_speed_x--;
//	}
	
//	if (phy_position_y > stuckY)
//	{
//		phy_speed_y++;
//	}
	
//	if (phy_position_y < stuckY)
//	{
//		phy_speed_y--;
//	}
//}