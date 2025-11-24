if (place_meeting(x, y, [oWall, oWallWedge, oWallCircle]))
{
	with (oP1WithHatchet)
	{
		if (holdingItem != true)
		{
			other.phy_active = false;
		}
	}
}