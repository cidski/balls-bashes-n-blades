var _hor = keyboard_check(vk_right) - keyboard_check(vk_left);
var _ver = keyboard_check(vk_down) - keyboard_check(vk_up);
var _throw = keyboard_check(vk_numpad0);

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);

if (place_meeting(x, y, [oSwordP1, oSpike, oSledgeHammmerP1, oHatchetP1]))
{
	instance_destroy()
}

if (_throw = true)
{
	physics_joint_delete(joint)
}