curtotal = 0;
funbuffer -= 1;
for (i = 0; i < tiletotal; i += 1)
{
	if (tileid[i].stepped == 1)
		curtotal += 1;
}
if (curtotal == funtotal && funbuffer < -1)
{
	if (room == room_field_puzzle1)
	{
		with (block[wonamt])
			instance_destroy();
		with (spike1[wonamt])
			image_index = 1;
		with (spike2[wonamt])
			image_index = 1;
	}
	wonamt += 1;
	snd_play(snd_break1);
	funbuffer = 7;
	if (wonamt == wonmax)
	{
		if (room == room_field_puzzle2)
			shakecon = 1;
		if (global.plot < plotamt)
			global.plot = plotamt;
		active = 2;
		sprite_index = spr_hourglass_switch_off;
		funbuffer = -1;
		with (obj_glowtile)
		{
			active = 0;
			stepped = 0;
			stepbuffer = -1;
			sprite_index = spr_glowtile_off;
		}
	}
}
if (funbuffer == 4)
{
	with (obj_glowtile)
	{
		active = 0;
		stepped = 0;
		stepbuffer = -1;
		sprite_index = spr_glowtile_off;
	}
}
if (funbuffer == 1)
	event_user(2);
if (stepnoise == 1)
{
	snd_play(snd_step1);
	stepnoise = 0;
}
if (active == 1)
{
	failtimer += 1;
	image_index = failtimer / (failmax / 8);
	if (failtimer >= failmax)
	{
		active = 0;
		sprite_index = spr_hourglass_switch_off;
		snd_play(snd_noise);
		failamt += 1;
		if (failamt >= 3 && talked == 0 && global.interact == 0 && obj_darkcontroller.atalk == 0 && room == room_field_puzzle1)
		{
			talked = 1;
			global.interact = 1;
			global.fc = 2;
			global.typer = 31;
			global.fe = 1;
			global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_77_0");
			global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_78_0") + scr_get_input_name(5) + scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_78_1");
			instance_create(0, 0, obj_dialoguer);
		}
		if (failamt >= 3 && talked == 0 && global.interact == 0 && room == room_field_puzzle2)
		{
			talked = 1;
			global.interact = 1;
			global.fc = 2;
			global.typer = 31;
			global.fe = 1;
			if (!scr_havechar(2))
			{
				global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_91_0");
				global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_92_0");
			}
			if (scr_havechar(2) && obj_darkcontroller.atalk == 0)
			{
				global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_98_0");
				global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_99_0");
				scr_susface(2, 2);
				global.msg[3] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_101_0");
			}
			if (scr_havechar(2) && obj_darkcontroller.atalk == 1)
			{
				global.fc = 1;
				global.fe = 0;
				global.typer = 30;
				global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_110_0");
				global.msg[1] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_111_0");
				scr_ralface(2, 8);
				global.msg[3] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_113_0") + scr_get_input_name(5) + scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_113_1");
			}
			instance_create(0, 0, obj_dialoguer);
		}
		with (obj_glowtile)
		{
			active = 0;
			stepped = 0;
			stepbuffer = -1;
			sprite_index = spr_glowtile_off;
		}
	}
}
if (talked == 1 && d_ex() == 0)
{
	talked = 2;
	global.interact = 0;
}
if (shakecon == 1 && global.interact == 0)
{
	global.interact = 1;
	snd_play(snd_locker);
	instance_create(0, 0, obj_shake);
	shakecon = 2;
}
if (shakecon == 2 && !instance_exists(obj_shake))
{
	global.fc = 0;
	global.typer = 6;
	global.msg[0] = scr_84_get_lang_string("obj_glowtilepuzz_slash_Step_0_gml_148_0");
	instance_create(0, 0, obj_dialoguer);
	shakecon = 3;
}
if (shakecon == 3 && d_ex() == 0)
{
	global.interact = 0;
	shakecon = 4;
}
