var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));

if (_right = true) && (_left = false)
{
	physics_joint_set_value(wheel1, phy_joint_motor_speed, 10);
	physics_joint_set_value(wheel2, phy_joint_motor_speed, 10);
}
else if (_right = false) && (_left = true)
{
	physics_joint_set_value(wheel1, phy_joint_motor_speed, -10);
	physics_joint_set_value(wheel2, phy_joint_motor_speed, -10);
}
else
{
	physics_joint_set_value(wheel1, phy_joint_motor_speed, 0);
	physics_joint_set_value(wheel2, phy_joint_motor_speed, 0);
}