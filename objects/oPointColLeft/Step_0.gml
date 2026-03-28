if (instance_position(mouse_x, mouse_y, oPointColLeft))
{
	collisionWithMouse = true;
	
	image_index = 1;
}
else
{
	collisionWithMouse = false;
	
	image_index = 0;
}