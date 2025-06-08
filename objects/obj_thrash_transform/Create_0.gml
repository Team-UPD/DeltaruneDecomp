f = 2;
state = 0;
timer = 0;
image_speed = 0;
image_xscale = -2;
image_yscale = 2;
vspeed = 80 / f;
image_blend = c_black;
depth = -10;
obj_3d_bg_effect.slow_down = 1;
headsprite = spr_bhero_head_c;
punchcon = 0;
punchtimer = 0;
basex = 320;
basey = 390;
siner = 0;
missnoise = 0;
miss_timer = 0;
shaketimer = 4;
movetime = 0;
if (global.flag[220] == 1)
	headsprite = spr_bhero_head_b;
if (global.flag[220] == 2)
	headsprite = spr_bhero_head_a;
if (global.flag[220] == 3)
	headsprite = spr_bhero_head_d;
transformstate = 0;
effect = 0;
