con = -1;
customcon = 0;
cantrigger = true;
torieldoor = scr_marker(153, 141, spr_lw_krishouse_door);
with (torieldoor)
	scr_depth();
if (global.chapter != 2 || global.plot >= 210 || global.plot < 205)
{
	instance_destroy();
}
else
{
	instance_destroy(obj_doorX_musfade);
	housetop = scr_marker(40, 20, spr_cutscene_30a_housetop);
	with (housetop)
		scr_depth();
}
