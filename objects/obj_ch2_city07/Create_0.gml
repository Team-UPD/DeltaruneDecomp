jp = 0;
if (global.lang == "ja")
	jp = 1;
con = -1;
customcon = 0;
berdlygift = false;
explore = false;
wrongexit = 0;
havewalker = global.flag[254] == 1;
tentback = scr_dark_marker(1312, -161, spr_carnival_tent_1);
tentback.depth = 100000;
tent = scr_dark_marker(1312, 32, spr_cutscene_15_tent_foreground);
tent.depth = 97800;
var buy_sign = instance_create(1390, 50, obj_cybercity_bg_screen);
buy_sign.depth = 200;
hit_bottles = false;
hit_timer = 0;
susie_heal = false;
heal_timer = 0;
heal_beam = -1;
heal_effect = false;
box_remove_effect = false;
box_remove_timer = 0;
susie_right = false;
present_transform = false;
present_timer = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.plot >= 95)
{
	if (global.plot < 99)
	{
		scr_losechar();
		if (instance_exists(obj_caterpillarchara))
			instance_destroy(obj_caterpillarchara);
		scr_getchar(2);
		scr_getchar(3);
		scr_getchar(4);
		scr_makecaterpillar(obj_mainchara.x + 60, obj_mainchara.y, 2, 0);
		scr_makecaterpillar(obj_mainchara.x + 100, obj_mainchara.y, 4, 1);
		scr_makecaterpillar(obj_mainchara.x + 140, obj_mainchara.y, 3, 2);
		con = 99;
		explore = true;
	}
}
else
{
	for (var i = 0; i < 5; i++)
	{
		bottle[i] = scr_dark_marker(1360 + (15 * i), 190, spr_cutscene_15_milk_bottle);
		bottle[i].depth = 97700;
	}
	for (var i = 5; i < 9; i++)
	{
		bottle[i] = scr_dark_marker(1367 + (15 * (i - 5)), 160, spr_cutscene_15_milk_bottle);
		bottle[i].depth = 97700;
	}
}
