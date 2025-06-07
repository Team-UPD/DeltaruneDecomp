scr_depth();
image_speed = 0;
darkmode = global.darkzone;
if (darkmode == 1)
{
	image_xscale = 2;
	image_yscale = 2;
}
walk = 0;
fun = 0;
runmove = 0;
dir = 0;
walkbuffer = 0;
walktimer = 0;
blushtimer = 0;
target = 12;
usprite = spr_susieu_dark;
dsprite = spr_susied_dark;
rsprite = spr_susier_dark;
lsprite = spr_susiel_dark;
if (global.plot >= 240)
{
	usprite = spr_susieu_dark;
	dsprite = spr_susied_dark_eyes;
	rsprite = spr_susier_dark_eyes;
	lsprite = spr_susiel_dark_eyes;
}
usprite_blush = spr_ralseiu;
dsprite_blush = spr_ralseid;
rsprite_blush = spr_ralseir_blush;
lsprite_blush = spr_ralseil_blush;
parent = obj_mainchara;
pd = parent.dsprite;
pr = parent.rsprite;
pl = parent.lsprite;
pu = parent.usprite;
for (i = 0; i < 25; i += 1)
{
	remx[i] = obj_mainchara.x;
	remy[i] = obj_mainchara.y;
	facing[i] = global.facing;
}
depth = obj_mainchara.depth + 5;
mywidth = sprite_width;
myheight = sprite_height;
