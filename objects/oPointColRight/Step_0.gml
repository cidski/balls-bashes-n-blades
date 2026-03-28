if (instance_position(idBoundWeapon.idColDot.x, idBoundWeapon.idColDot.y, id))
{
	collisionWithMouse = true;
	
	image_index = 1;
}
else
{
	collisionWithMouse = false;
	
	image_index = 0;
}