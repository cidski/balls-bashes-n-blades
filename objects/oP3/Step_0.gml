var _hor = gamepad_button_check(0, gp_padr) - gamepad_button_check(0, gp_padl);
var _ver = gamepad_button_check(0, gp_padd) - gamepad_button_check(0, gp_padu);

phy_speed_x = phy_speed_x + (_hor * move_speed);
phy_speed_y = phy_speed_y + (_ver * move_speed);