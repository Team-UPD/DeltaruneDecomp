image_speed = 0;
image_index = 0;
tiltAmount = 0;
t = 0;
xx = x;
increment = 2;
amplitude = 360;
type = 0;
if (scr_sideb_get_phase() > 2)
	type = 1;
con = 0;
timer = 0;
if (type == 1)
{
	sprite_index = spr_pipis_egg_bottomanchor;
	y -= 24;
}
image_speed = 0;
image_index = 0;
mySwatch = 0;
if (room == room_dw_mansion_east_2f_c && type == 0)
{
	if (t == 180)
	{
		mySwatch = instance_create(x + 20, y - 156, obj_swatch_potchaser);
		mySwatch.dir = "left";
	}
	else
	{
		mySwatch = instance_create(x - 20, y - 156, obj_swatch_potchaser);
		mySwatch.dir = "right";
	}
	mySwatch.target = id;
}
t = (t + increment) % 360;
shift = amplitude * dsin(t);
x = xx + shift;
going = "left";
tellspeed = 0;
startX = x;
active = true;
if (global.flag[544] != 0 && type == 0)
{
	with (mySwatch)
		instance_destroy();
}
