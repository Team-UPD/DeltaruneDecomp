myinteract = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
con = 0;
type = 1;
read = 0;
splatnoise = 0;
scr_depth();
if (x < 800)
	type = 1;
else
	type = 2;
if (type == 1 && global.flag[310] == 1)
{
	image_index = 1;
	type = 4;
}
if (global.flag[384] == 1 && type == 2)
{
	image_index = 1;
	type = 4;
}
if (room == room_dw_city_postbaseball_2)
{
	snd_play(snd_impact);
	image_index = 0;
	fallcon = 0;
	type = 2;
}
