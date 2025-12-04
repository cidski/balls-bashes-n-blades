if (place_meeting(x, y, [oWall, oWallWedge, oWallCircle]))
{
	with (oP3WithHatchet)
	{
		if (holdingItem == false)
		{
			other.phy_active = false;
		}
	}
}