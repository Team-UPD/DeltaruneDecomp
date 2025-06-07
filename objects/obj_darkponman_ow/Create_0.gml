global.charinstance[0] = obj_mainchara;
global.charinstance[1] = global.cinstance[0];
global.charinstance[2] = global.cinstance[1];
boss = 0;
if (instance_find(object_index, 0) == id)
{
	boss = 1;
	depth += 1;
}
battlealpha = 0;
max_battlealpha = 1;
image_xscale = 2;
image_yscale = 2;
rot = 0;
init = 0;
con = 0;
timer = 0;
eyer = 0;
image_speed = 0;
rotspeed = 4;
tile_fade = 0;
tile_layer_choice = 222222;
if (room == room_forest_area2)
{
	if (x >= (room_width / 2))
	{
		rotspeed = -4;
		rot = 180;
	}
	tile_fade = 1;
	tile_layer_choice = 222222;
}
bmax = 8;
made = 0;
offx = 30;
offy = 30;
xrange = 300;
yrange = 240;
if (room == room_forest_area5)
{
	rotspeed = 2.5;
	bmax = 11;
	xrange = 300;
	yrange = 280;
	tile_fade = 1;
	tile_layer_choice = 222222;
}
if (room == room_cc_2f)
{
	rotspeed = 3;
	bmax = 8;
	yrange = 280;
	if (x >= 800 && y <= 800)
	{
		rotspeed = -3;
		rot = 180;
	}
	if (x <= 800 && y >= 800)
	{
		rotspeed = -3;
		rot = 180;
	}
	tile_fade = 1;
	tile_layer_choice = 222222;
}
if (tile_fade == 1 && boss == 1)
{
	alpha_changed = 0;
	tile_fade = 1;
	tilearray = tile_get_ids_at_depth(tile_layer_choice);
	for (var i = 0; i < array_length_1d(tilearray); i++)
		tile_set_alpha(tilearray[i], 0);
}
xx = 0;
yy = 0;
siner = 0;
