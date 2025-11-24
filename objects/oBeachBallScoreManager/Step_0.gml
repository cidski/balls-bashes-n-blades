with (oBeachBall)
{
	if (other.previousCollision == CollisionType.None && collision == CollisionType.Red)
	{
		other.blueScore++;
		//show_debug_message("none to red");
		show_debug_message("blue: " + string(other.blueScore) + ", red: " + string(other.redScore));
	}
	else if (other.previousCollision == CollisionType.None && collision == CollisionType.Blue)
	{
		other.redScore++;
		//show_debug_message("none to blue");
		show_debug_message("blue: " + string(other.blueScore) + ", red: " + string(other.redScore));
	}
	else if (other.previousCollision == CollisionType.Blue && collision == CollisionType.Red)
	{
		other.blueScore++;
		//show_debug_message("blue to red");
		show_debug_message("blue: " + string(other.blueScore) + ", red: " + string(other.redScore));
	}
	else if (other.previousCollision == CollisionType.Red && collision == CollisionType.Blue)
	{
		other.redScore++;
		//show_debug_message("red to blue");
		show_debug_message("blue: " + string(other.blueScore) + ", red: " + string(other.redScore));
	}
	
	other.previousCollision = collision;
	
}