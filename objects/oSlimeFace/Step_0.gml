with (oP2)
{
	other.x = x;
	other.y = y;
	
	other.image_angle = -(phy_angular_velocity / 4);
}

if (image_angle > 45)
{
	image_angle = 45;
}
else if (image_angle < -45)
{
	image_angle = -45;
}