draw_set_font(fPointText);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width / 2, 50, string(redScore) + " : " + string(blueScore));