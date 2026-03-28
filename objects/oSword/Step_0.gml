idColLeft.x = x;
idColLeft.y = y;
idColRight.x = x;
idColRight.y = y;

idColLeft.image_angle = -phy_rotation;
idColRight.image_angle = -phy_rotation;

if (idColLeft.collisionWithMouse == true)
{
	phy_angular_velocity -= 20;
}
else if (idColRight.collisionWithMouse == true)
{
	phy_angular_velocity += 20;
}
phy_angular_velocity = phy_angular_velocity * 0.95