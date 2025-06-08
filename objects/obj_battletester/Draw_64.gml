setup_encounter = 0;
if (global.fighting == 0)
{
	if (keyboard_check_pressed(ord("1")))
		global.encounterno--;
	if (keyboard_check_pressed(ord("2")))
		global.encounterno++;
	if (keyboard_check_pressed(ord("3")))
		global.encounterno -= 5;
	if (keyboard_check_pressed(ord("4")))
		global.encounterno += 5;
}
global.encounterno = clamp(global.encounterno, encountermin, encountermax);
if (instance_exists(obj_chaseenemy))
	obj_chaseenemy.myencounter = global.encounterno;
if (global.fighting == 0)
{
	if (keyboard_check_pressed(ord("6")))
	{
		scr_losechar();
		scr_getchar(2);
		scr_getchar(3);
	}
	if (keyboard_check_pressed(ord("7")))
		scr_losechar();
	if (keyboard_check_pressed(ord("8")))
	{
		scr_losechar();
		scr_getchar(3);
	}
	if (keyboard_check_pressed(ord("9")))
	{
		scr_losechar();
		scr_getchar(4);
		scr_itemget(1);
	}
	draw_set_color(c_lime);
	scr_84_set_draw_font("main");
	draw_text(0, 440, string_hash_to_newline("Party:  " + string(global.charname[global.char[0]]) + " " + string(global.charname[global.char[1]]) + " " + string(global.charname[global.char[2]])));
	draw_text(0, 455, string_hash_to_newline("6: full party. 7:kris only. 8:kris and ralsei 9: kris + noelle"));
}
if (!instance_exists(obj_debug_xy))
{
	if (global.fighting == 0)
	{
		scr_encountersetup(global.encounterno);
		draw_set_color(c_black);
		draw_rectangle(0, 0, 80, 50, false);
		draw_set_color(c_white);
		scr_84_set_draw_font("mainbig");
		draw_text(0, 0, string_hash_to_newline("EncounterNo: " + string(global.encounterno)));
		for (i = 0; i < 3; i++)
		{
			if (global.monstertype[i] > 0)
				draw_text(0, 20 + (i * 20), string_hash_to_newline(object_get_name(global.monsterinstancetype[i])));
		}
		draw_set_color(c_ltgray);
		scr_84_set_draw_font("main");
		for (j = 1; j < 5; j++)
		{
			scr_encountersetup(global.encounterno + j);
			for (i = 0; i < 3; i++)
			{
				draw_text(0, 60 + (j * 70), string_hash_to_newline("Encounter: " + string(global.encounterno + j)));
				if (global.monstertype[i] > 0)
					draw_text(0, 70 + (i * 10) + (j * 70), string_hash_to_newline(object_get_name(global.monsterinstancetype[i])));
			}
		}
		draw_text(300, 0, string_hash_to_newline("Adjust EncounterNo:#1- 2+#3----- 4+++++"));
		scr_encountersetup(global.encounterno);
	}
	else
	{
	}
}
if (global.fighting == 1 && keyboard_check_pressed(ord("D")))
{
	if (!i_ex(obj_danmaku_analyzer))
	{
		instance_create(0, 0, obj_danmaku_analyzer);
	}
	else
	{
		with (obj_danmaku_analyzer)
			instance_destroy();
	}
}
