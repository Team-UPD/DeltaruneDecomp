l = image_xscale;
h = image_yscale;
siner = 0;
seed = random(45000);
mode = 2;
timer = 0;
minitimer = 0;
for (i = 0; i < l; i++)
{
	barsiner[i] = random(4600);
	yscale[i] = random(1) * h;
	color[i] = make_color_hsv((i * 255) / l, 128, 255);
}
scr_depth();
if (room == room_dw_city_savepoint)
	depth = 900000;
