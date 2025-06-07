global.flag[31] = 1;
shakecon = 0;
charadjustcon = 0;
rectcon = 0;
rectspeed = 0;
rect_alpha = 0;
recty = 0;
dir = 1;
newcno = 0;
cno = global.flag[239];
cmax = 5;
bg_c[0] = 16777215;
bg_c[1] = merge_color(c_navy, c_white, 0.5);
bg_c[2] = merge_color(c_lime, c_white, 0.5);
bg_c[3] = merge_color(c_fuchsia, c_white, 0.5);
bg_c[4] = merge_color(c_orange, c_white, 0.5);
bg_c[5] = merge_color(c_aqua, c_white, 0.5);
bg_c[0] = merge_color(c_dkgray, c_white, 0.25);
bg_c[1] = merge_color(c_dkgray, c_white, 0.67);
bg_c[2] = merge_color(c_dkgray, c_white, 1);
bg_c[3] = merge_color(c_gray, c_navy, 0.5);
prev_bg_c = bg_c[cno];
cur_bg_c = bg_c[cno];
ideal_bg_c = bg_c[cno];
merge_amt = 0;
mergespeed = 0.1;
mergecon = 0;
mergetimer = 0;
pitchcount = 0;
movecon = 0;
movetimer = 0;
rectspacing = 600;
doorcon = 0;
doorx = 40;
floorno = 0;
con = 0;
if (global.plot < 165)
{
	con = 1;
	global.interact = 1;
	with (obj_caterpillarchara)
		instance_destroy();
}
jup = 0;
a_timer = 0;
