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
follow = 1;
runmove = 0;
dir = 0;
walkbuffer = 0;
walktimer = 0;
slided = 0;
blushtimer = 0;
name = "susie";
target = 12;
usprite = spr_susieu_dark;
dsprite = spr_susied_dark;
rsprite = spr_susier_dark;
lsprite = spr_susiel_dark;
slidesprite = spr_susie_slide;
if (global.chapter >= 2)
{
	usprite = spr_susie_walk_up_dw;
	rsprite = spr_susie_walk_right_dw;
	lsprite = spr_susie_walk_left_dw;
	dsprite = spr_susie_walk_down_dw;
	if (global.darkzone == 0)
	{
		usprite = spr_susie_walk_up_lw;
		rsprite = spr_susie_walk_right_lw;
		lsprite = spr_susie_walk_left_lw;
		dsprite = spr_susie_walk_down_lw;
	}
}
usprite_blush = spr_ralseiu;
dsprite_blush = spr_ralseid;
rsprite_blush = spr_ralseir_blush;
lsprite_blush = spr_ralseil_blush;
if (global.chapter >= 2)
{
	usprite_blush = spr_ralsei_walk_up;
	dsprite_blush = spr_ralsei_walk_down_blush;
	rsprite_blush = spr_ralsei_walk_right_blush;
	lsprite_blush = spr_ralsei_walk_left_blush;
}
parent = obj_mainchara;
pd = parent.dsprite;
pr = parent.rsprite;
pl = parent.lsprite;
pu = parent.usprite;
for (i = 0; i < 75; i += 1)
{
	remx[i] = parent.x;
	remy[i] = parent.y;
	facing[i] = global.facing;
	sliding[i] = 0;
}
depth = parent.depth + 5;
mywidth = sprite_width;
myheight = sprite_height;
xoffset = 0;
yoffset = 0;
init = 0;
forget = 0;
ignoredepth = 0;
