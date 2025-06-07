scr_depth();
alarm[2] = 2;
global.currentroom = scr_get_id_by_room_index(room);
autorun = 0;
bg = 0;
if (instance_exists(obj_backgrounderparent))
	bg = 1;
stepping = 0;
stepped = 0;
battlemode = 0;
battleheart = instance_create(x, y, obj_overworldheart);
battleheart.image_alpha = 0;
battleheart.image_speed = 0;
battlealpha = 0;
becamebattle = 0;
darkmode = global.darkzone;
if (darkmode == 1)
{
	stepping = 1;
	image_xscale = 2;
	image_yscale = 2;
}
cutscene = 0;
press_l = 0;
press_r = 0;
press_d = 0;
press_u = 0;
px = 0;
py = 0;
wallcheck = 0;
wspeed = 3;
bwspeed = 3;
if (darkmode == 1)
{
	bwspeed = 4;
	wspeed = 4;
}
run = 0;
runtimer = 0;
subxspeed = 0;
subyspeed = 0;
subx = 0;
suby = 0;
walkanim = 0;
walkbuffer = 0;
walktimer = 0;
image_speed = 0;
dsprite = spr_krisd;
rsprite = spr_krisr;
usprite = spr_krisu;
lsprite = spr_krisl;
if (global.darkzone == 1)
{
	dsprite = spr_krisd_dark;
	rsprite = spr_krisr_dark;
	lsprite = spr_krisl_dark;
	usprite = spr_krisu_dark;
}
fun = 0;
if (global.facing == 0)
	sprite_index = dsprite;
if (global.facing == 1)
	sprite_index = rsprite;
if (global.facing == 2)
	sprite_index = usprite;
if (global.facing == 3)
	sprite_index = lsprite;
onebuffer = 0;
twobuffer = 0;
threebuffer = 0;
global.menuno = 0;
for (i = 0; i < 10; i += 1)
	global.menucoord[i] = 0;
if (global.interact == 3)
{
	if (global.entrance > 0)
	{
		global.interact = 0;
		if (global.entrance == 1)
		{
			x = obj_markerA.x;
			y = obj_markerA.y;
		}
		if (global.entrance == 2)
		{
			x = obj_markerB.x;
			y = obj_markerB.y;
		}
		if (global.entrance == 4)
		{
			x = obj_markerC.x;
			y = obj_markerC.y;
		}
		if (global.entrance == 5)
		{
			x = obj_markerD.x;
			y = obj_markerD.y;
		}
		if (global.entrance == 6)
		{
			x = obj_markerE.x;
			y = obj_markerE.y;
		}
		if (global.entrance == 7)
		{
			x = obj_markerF.x;
			y = obj_markerF.y;
		}
		if (global.entrance == 18)
		{
			x = obj_markerr.x;
			y = obj_markerr.y;
		}
		if (global.entrance == 19)
		{
			x = obj_markers.x;
			y = obj_markers.y;
		}
		if (global.entrance == 20)
		{
			x = obj_markert.x;
			y = obj_markert.y;
		}
		if (global.entrance == 21)
		{
			x = obj_markeru.x;
			y = obj_markeru.y;
		}
		if (global.entrance == 22)
		{
			x = obj_markerv.x;
			y = obj_markerv.y;
		}
		if (global.entrance == 23)
		{
			x = obj_markerw.x;
			y = obj_markerw.y;
		}
		if (global.entrance == 24)
		{
			x = obj_markerX.x;
			y = obj_markerX.y;
		}
	}
}
initwd = sprite_width;
initht = sprite_height;
mywidth = sprite_width;
myheight = sprite_height;
for (i = 0; i < 3; i += 1)
	global.battledf[i] = global.df[global.char[i]] + global.itemdf[global.char[i]][0] + global.itemdf[global.char[i]][1] + global.itemdf[global.char[i]][2];
menuOpened = false;
