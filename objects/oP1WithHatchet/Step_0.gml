var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _interact = keyboard_check_pressed(ord("E"));

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);

if (place_meeting(x, y, [oSpike, oSwordP2, oSledgeHammmerP2, oHatchetP2, oHatchetP3, oHatchetP4]))
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
		
		if (collision_circle(x, y, 65, oHatchetP1, false, true) != noone)
		{
			hatchet_id.phy_position_x = x;
			hatchet_id.phy_position_y = y;
			
			joint = physics_joint_wheel_create(id, hatchet_id, hatchet_id.phy_position_x, hatchet_id.phy_position_y, 0, 1, false, 10, 1, 15, 6, false);
			
			holdingItem = true;
			
			hatchet_id.phy_active = true;
		}
	}
}