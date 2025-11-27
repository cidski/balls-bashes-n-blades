if (place_meeting(x, y, [oWall, oWallWedge, oWallCircle]))
{
	with (oP2WithHatchet)
	{
		if (holdingItem == false)
		{
			other.phy_active = false;
		}
	}
}