var _hor = gamepad_button_check(1, gp_padr) - gamepad_button_check(1, gp_padl);
var _ver = gamepad_button_check(1, gp_padd) - gamepad_button_check(1, gp_padu);
var _interact = gamepad_button_check_pressed(1, gp_shoulderr);

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);

if (place_meeting(x, y, [oSwordP1, oSpike, oSledgeHammmerP1, oHatchetP1, oHatchetP2, oHatchetP3]))
{
	instance_destroy();
}

if (_interact == true)
{
	if (holdingItem == true)
	{
		// throw
		
		physics_joint_delete(joint);
		holdingItem = false;
	}
	else
	{
		//pick up
		
		if (collision_circle(x, y, 65, oHatchetP4, false, true) != noone)
		{
			hatchet_id.phy_position_x = x;
			hatchet_id.phy_position_y = y;
			
			joint = physics_joint_wheel_create(id, hatchet_id, hatchet_id.phy_position_x, hatchet_id.phy_position_y, 0, 1, false, 10, 1, 15, 6, false);
			
			holdingItem = true;
			
			hatchet_id.phy_active = true;
		}
	}
}