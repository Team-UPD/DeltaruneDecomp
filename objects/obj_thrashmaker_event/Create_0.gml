con = 1;
x = 400;
y = 300;
bush_debris = 0;
bush = scr_dark_marker(305, 20, spr_susiebush);
with (bush)
{
	depth = 850000;
	image_speed = 0;
	image_index = 0;
}
for (i = 0; i < 6; i += 1)
	stat[i] = 0;
if (global.flag[226] == 1)
{
	with (bush)
		image_index = 1;
	event_user(1);
	con = 999;
	instance_destroy();
}
