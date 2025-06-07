dtsprite = spr_susied_dark;
rtsprite = spr_susier_dark;
ltsprite = spr_susiel_dark;
utsprite = spr_susieu_dark;
myinteract = 0;
facing = 2;
dfacing = 2;
image_speed = 0;
talked = 0;
image_xscale = 2;
image_yscale = 2;
scr_depth();
if (global.plot >= 30)
{
	instance_destroy();
}
else
{
	s = instance_create(450, 950, obj_soliddark);
	s.image_yscale = 8;
}
