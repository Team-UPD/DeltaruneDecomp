global.facing = 0;
obj[0] = scr_marker(126, 63, spr_torieldesk);
obj[1] = scr_marker(107, 116, spr_smalldesk);
obj[2] = scr_marker(158, 116, spr_smalldesk);
obj[3] = scr_marker(208, 116, spr_smalldesk);
obj[4] = scr_marker(107, 145, spr_smalldesk);
obj[5] = scr_marker(158, 145, spr_smalldesk);
obj[6] = scr_marker(208, 145, spr_smalldesk);
obj[7] = scr_marker(49, 179, spr_toyblock);
obj[8] = scr_marker(261, 183, spr_godthrone);
for (i = 0; i < 9; i += 1)
{
	with (obj[i])
		scr_depth();
}
sunset = scr_marker(0, 0, spr_torielclass_sunsetoverlay);
with (sunset)
{
	image_alpha = 0.4;
	depth = 2000;
}
