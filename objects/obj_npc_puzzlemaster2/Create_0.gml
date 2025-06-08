myinteract = 0;
talked = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
con = 0;
scr_depth();
image_speed = 0;
type = 0;
siner = 0;
active = 0;
emotion = 0;
beanie[0] = 0;
beanie[1] = 0;
beanie[2] = 0;
if (global.chapter == 1)
{
	if (x < 350)
	{
		beanie[1] = 0;
		beanie[0] = 1;
		type = 1;
	}
	if (x < 250)
	{
		beanie[0] = 1;
		beanie[2] = 1;
		type = 2;
	}
	if (x < 150)
	{
		beanie[0] = 1;
		beanie[1] = 1;
		beanie[2] = 1;
		type = 3;
	}
}
if (global.chapter == 2 && room == room_dw_castle_dojo)
{
	beanie[1] = 0;
	beanie[0] = 1;
	type = 0;
}
