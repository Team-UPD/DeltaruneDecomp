con = -1;
if (global.plot >= 200 && global.flag[387] == 0)
{
	con = 1;
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_makecaterpillar(obj_mainchara.x - 40, obj_mainchara.y, 2, 0);
	if (!scr_keyitemcheck(8))
		scr_keyitemget(8);
	if (!scr_keyitemcheck(9))
		scr_keyitemget(9);
	trashy_release = false;
	trashy_leave = false;
}
if (global.plot <= 7)
	con = 10;
