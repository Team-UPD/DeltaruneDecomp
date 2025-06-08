init = false;
layer_y_pos = 0;
layer_x_pos = 0;
siner = 0;
cityscape_height = sprite_get_height(spr_bg_cyber_parallax_buildings);
lights_height = sprite_get_height(spr_bg_cyber_parallax_buildings_lights);
ground_height = sprite_get_height(spr_bg_cyber_parallax_ground);
shadow = 0;
dark_blend = merge_color(make_color_hsv(0, 0, 100), c_black, shadow);
depth = 1000100;
is_active = true;
if (room == room_dw_cyber_maze_fireworks)
	is_active = global.flag[357] == 1;
