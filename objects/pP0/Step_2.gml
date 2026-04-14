if (face != noone)
{
	idFace.x = x;
	idFace.y = y;
}

if (isGrabbing == true)
{
	idColLeft.x = x;
	idColLeft.y = y;
	idColRight.x = x;
	idColRight.y = y;
	
	idColLeft.image_angle = -o_id.phy_rotation;
	idColRight.image_angle = -o_id.phy_rotation;
}

layer_text_x(healthText, x - 15);
layer_text_y(healthText, y + 40);
layer_text_text(healthText, string(HP) + "/10");