con = -1;
shortened = false;
tempcon = -1;
visible = true;
customcon = 0;
steptimer = 0;
floattimer = 0;
if (global.chapter != 2 || global.plot >= 60)
{
	nobacktracking = instance_create(1880, 200, obj_soliddark);
	nobacktracking.image_xscale = 1;
	nobacktracking.image_yscale = 7;
	instance_destroy();
}
else
{
	if (global.tempflag[27] == 1)
		shortened = true;
	nisesweet = scr_dark_marker(camerax() + 700, (room_height / 2) - 80, spr_sweet_idle);
	nisesweet.image_speed = 0.25;
	nisehatguy = scr_dark_marker(0, cameray() - 200, spr_hatguy_idle);
	nisehatguy.image_speed = 0;
	nisekk = instance_create(0, cameray() - 200, obj_kk_npc);
	with (nisekk)
		scr_depth();
	djtable = scr_dark_marker(nisesweet.x - 40, nisesweet.y + 64, spr_cutscene_cyber01_dj_table_side);
	djtable.image_speed = 0.25;
	targy = (room_height / 2) - 80;
}
