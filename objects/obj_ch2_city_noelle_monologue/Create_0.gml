con = 0;
customcon = 0;
auto_text = false;
auto_con = -1;
allow_move = false;
cutscene_master = obj_sneo_friedpipis;
custom_delay = 0;
no_silhouette = 0;
young_noelle = 0;
auto_continue = false;
msgtimer = 0;
buttonIndex = 0;
buttonX[0] = 0;
buttonY[0] = 0;
init = 0;
noendx = 0;
init_forcefields = false;
text_con = -1;
pause_kris = false;
if (global.plot < 94)
{
	if (global.flag[7] == 1)
		global.flag[7] = 0;
	if (!scr_havechar(4))
	{
		scr_losechar();
		if (instance_exists(obj_caterpillarchara))
			instance_destroy(obj_caterpillarchara);
		scr_getchar(4);
		scr_makecaterpillar(obj_mainchara.x, obj_mainchara.y - 40, 4, 0);
		with (obj_caterpillarchara)
			scr_caterpillar_interpolate();
	}
}
else
{
	instance_destroy();
}
