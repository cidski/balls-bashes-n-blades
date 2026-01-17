var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));
var _interact = keyboard_check_pressed(ord("E"));

if (inVehicle = false)
{
	phy_speed_x = phy_speed_x + (_hor * move_speed);
	phy_speed_y = phy_speed_y + (_ver * move_speed);
}

if (_interact = true)
{
	if (inVehicle = false) && (place_meeting(x, y, oCar))
	{
		inVehicle = true
		
		if (firstTimeVehicle = true)
		{
			mainFixture = physics_fixture_create();
			physics_fixture_set_box_shape(mainFixture, 128, 32);
			wheelFixture = physics_fixture_create();
			physics_fixture_set_circle_shape(wheelFixture, 32);
			physics_fixture_bind(mainFixture, id);
			
			with (oCar)
			{
			other.phy_position_x = x + 293;
			other.phy_position_y = y - 125;
			
			physics_fixture_bind(other.wheelFixture, id);
			other.joint = physics_joint_wheel_create(other.id, id, id.x + 293, id.y - 125, 0, 1, false, 10, 1, 15, 6, true);
			}
			
			physics_fixture_delete(mainFixture);
			physics_fixture_delete(wheelFixture);
		}
		else
		{
			joint = physics_joint_wheel_create(other.id, id, id.x + 293, id.y - 125, 0, 1, false, 10, 1, 15, 6, true);
		}
	}
	else if (inVehicle = true)
	{
		inVehicle = false
		physics_joint_delete(joint)
	}
}

