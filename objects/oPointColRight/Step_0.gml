if (instance_position(idBoundPlayer.idColDot.x, idBoundPlayer.idColDot.y, id))
{
	collisionWithMouse = true;
	
	image_index = 1;
}
else
{
	collisionWithMouse = false;
	
	image_index = 0;
}