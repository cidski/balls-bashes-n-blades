if (isKeyboard == true)
{
var _hor = keyboard_check(key_right) - keyboard_check(key_left);
var _ver = keyboard_check(key_down) - keyboard_check(key_up);
var _grab = keyboard_check_pressed(key_grab);
}
else
{
	var _hor = gamepad_button_check(gamepadNo, key_right) - gamepad_button_check(gamepadNo, key_left);
	var _ver = gamepad_button_check(gamepadNo, key_down) - gamepad_button_check(gamepadNo, key_up);
	var _grab = gamepad_button_check_pressed(gamepadNo, key_grab);
}

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);

with (face)
{
	if (keyboard_check(other.key_right))
	{
		if (image_angle > -45)
		{
			image_angle -= 0.5;
		}
	}
	else if (keyboard_check(other.key_left))
	{
		if (image_angle < 45)
		{
			image_angle += 0.5;
		}
	}
	else
	{
		image_angle = 0;
	}
}

if (_grab == true)
{
	if (isGrabbing == false)
	{
		if (collision_circle(x, y, 100, oSword, true, true))
		{
			o_id = instance_nearest(x, y, oSword);
			o_id.phy_position_x = x;
			o_id.phy_position_y = y;
			var mainFixture = physics_fixture_create();
			physics_fixture_set_circle_shape(mainFixture, sprite_get_width(sprite_index) / 2);
			physics_fixture_bind(mainFixture, id);
			physics_fixture_bind(mainFixture, o_id);
			grabJoint = physics_joint_revolute_create(id, o_id, x, y, 0, 0, false, 0, 0, false, false);
			physics_fixture_delete(mainFixture);
			
			isGrabbing = true;
		}
	}
	else
	{
		physics_joint_delete(grabJoint);
		
		isGrabbing = false;
	}
}

if (place_meeting(x, y, oSword))
{
	instance_destroy(id);
	instance_destroy(face);
}