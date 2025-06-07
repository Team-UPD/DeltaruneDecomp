siner = 0;
targetx = 0;
wing_index = 0;
wingtimer = 0;
shot = 0;
xmake = 2;
attacktimer = 0;
attackcon = -1;
shakefactor = 4;
side = 1;
loc_check = 0;
mazemode = 0;
beatcon = 0;
introcon = 0;
introtimer = 0;
shadowy = y + 160;
shadow = scr_dark_marker(x, shadowy, sprite_index);
with (shadow)
{
	sprite_index = spr_starwalker_wings;
	image_yscale = 0.25;
	image_blend = c_black;
	depth = 600000;
}
depth = shadow.depth;
for (i = 0; i < 6; i += 1)
{
	char_xcheck[i] = obj_mainchara.x;
	char_ycheck[i] = obj_mainchara.y;
}
