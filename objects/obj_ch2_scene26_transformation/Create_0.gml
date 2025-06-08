max_index = 0;
image_play = false;
image_blend = c_black;
image_speed = 0;
timer = 0;
headsprite = spr_thrash_transform_head_c;
if (global.flag[220] == 1)
	headsprite = spr_thrash_transform_head_b;
else if (global.flag[220] == 2)
	headsprite = spr_thrash_transform_head_a;
else if (global.flag[220] == 3)
	headsprite = spr_thrash_transform_head_d;
frame_offset = 7;
screen_fade = -0.5;
