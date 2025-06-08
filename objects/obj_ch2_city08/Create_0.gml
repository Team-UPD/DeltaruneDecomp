con = -1;
customcon = 0;
weird = false;
if (global.flag[915] == 6 && global.flag[916] == 0)
	weird = true;
drawx = 0;
cityscape_parallax = true;
circle_zoom_start = false;
circle_zoom = -1;
circle_zoom_timer = 0;
if (global.chapter != 2 || global.plot >= 99)
{
	con = 999;
}
else if (weird == false)
{
	scr_losechar();
	safe_delete(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
	scr_getchar(4);
	scr_makecaterpillar(obj_mainchara.x, (obj_mainchara.y - 16) + 2, 2, 0);
	scr_makecaterpillar(obj_mainchara.x - 4, (obj_mainchara.y - 20) + 2, 4, 1);
	scr_makecaterpillar(obj_mainchara.x, obj_mainchara.y - 12 - 2, 3, 2);
}
