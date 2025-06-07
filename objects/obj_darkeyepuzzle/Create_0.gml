siner = 0;
con = 0;
total = 0;
if (global.flag[201] == 0)
{
	eye[0] = 0;
	eye[1] = 0;
	eye[2] = 0;
	for (i = 0; i < 3; i += 1)
	{
		shine[i] = scr_dark_marker(x + 30 + (i * 110), y + 110, spr_shine);
		shine[i].image_speed = 0.1;
		shine[i].depth = 800000;
	}
	block = instance_create(960, 320, obj_soliddark);
	block.image_yscale = 2;
}
else
{
	con = 44;
	eye[0] = 1;
	eye[1] = 1;
	eye[2] = 1;
	for (i = 0; i < 3; i += 1)
	{
		glass = scr_dark_marker(960 + (i * 40), 320, spr_magicalglass);
		glass.depth = 950000;
		glass = scr_dark_marker(960 + (i * 40), 360, spr_magicalglass);
		glass.depth = 950000;
	}
	with (obj_darkeyepuzzle_switch)
		instance_destroy();
}
