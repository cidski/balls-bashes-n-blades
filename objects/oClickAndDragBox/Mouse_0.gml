if (x > mouse_x)
{
	phy_speed_x--;
}
if (x < mouse_x)
{
	phy_speed_x++;
}
if (y > mouse_y)
{
	phy_speed_y--;
}
if (y < mouse_y)
{
	phy_speed_y++;
}

phy_position_x = mouse_x;
phy_position_y = mouse_y;