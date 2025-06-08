con = -1;
sinerx = 0;
sinery = 0;
siner0 = 0;
siner_add0 = 0.2;
siner_amplitude0 = 0;
siner_direction0 = 0;
siner1 = 0;
siner_add1 = 0.2;
siner_amplitude1 = 5;
siner_direction1 = 90;
sfx = false;
shine = -4;
remove_shine = false;
if (global.plot >= 10)
{
	if (scr_armorcheck_equipped_party(7) == 0 && scr_armorcheck_inventory(7) == 0 && scr_weaponcheck_inventory(7) == 0 && global.charweapon[2] != 7)
	{
		if (global.tempflag[35] == 0)
		{
			global.tempflag[35] = 1;
			scr_jevil_check();
		}
	}
	var show_shine = global.tempflag[36] == 1 || global.tempflag[36] == 2;
	if (show_shine && global.plot >= 200 && global.flag[309] < 9)
		show_shine = false;
	var hole = scr_marker(281, 200, spr_darkwest_hole);
	with (hole)
		scr_depth();
	if (show_shine)
	{
		shine = scr_marker(320, 235, spr_shine);
		shine.image_speed = 0.1;
		shine.image_xscale = 2;
		shine.image_yscale = 2;
		shine.depth = hole.depth - 10;
	}
}
if (global.chapter != 2 || global.flag[314] == 1)
	instance_destroy();
