global.facing = 0;
var fruit = spr_lw_classroom_apple;
if (global.chapter == 2)
	fruit = spr_lw_classroom_orange;
var desk_fruit = scr_marker(200, 75, fruit);
obj[0] = scr_marker(126, 63, spr_torieldesk);
obj[1] = scr_marker(107, 116, spr_smalldesk);
obj[2] = scr_marker(158, 116, spr_smalldesk);
obj[3] = scr_marker(208, 116, spr_smalldesk);
obj[4] = scr_marker(107, 145, spr_smalldesk);
obj[5] = scr_marker(158, 145, spr_smalldesk);
obj[6] = scr_marker(208, 145, spr_smalldesk);
if (global.chapter == 1)
	obj[8] = scr_marker(261, 183, spr_godthrone);
if (global.chapter == 2)
	obj[8] = scr_marker(261, 173, spr_lw_classroom_godthrone);
for (i = 0; i < 9; i += 1)
{
	with (obj[i])
		scr_depth();
}
desk_fruit.depth = obj[0].depth - 10;
if (global.plot >= 100)
{
	sunset = scr_marker(0, 0, spr_torielclass_sunsetoverlay);
	with (sunset)
	{
		image_alpha = 0.4;
		depth = 2000;
	}
}
