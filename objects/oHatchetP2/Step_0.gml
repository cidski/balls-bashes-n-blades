if (place_meeting(x, y, [oWall, oWallWedge, oWallCircle]))
{
	with (oP2WithHatchet)
	{
		if (holdingItem != true)
		{
			other.phy_active = false;
		}
	}
}