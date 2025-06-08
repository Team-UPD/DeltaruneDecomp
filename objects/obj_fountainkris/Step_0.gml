if (songplay == 2)
{
	global.currentsong[0] = snd_init("THE_HOLY.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.9);
	songplay = 3;
}
if (songplay == 1)
{
	snd_free_all();
	songplay = 2;
}
if (songplay == 0)
{
	with (obj_mainchara)
		visible = 0;
	songplay = 1;
}
if (con == 0)
{
	JA_XOFF = 0;
	con = 1;
	alarm[4] = 220;
}
if (con == 1)
{
	y -= 1;
	image_index = susindex;
	susindex += 0.1;
	susy -= 1;
	global.interact = 1;
}
if (con == 2)
{
	image_speed = 0;
	image_index = 0;
	susindex = 0;
	con = 2.1;
	alarm[4] = 60;
}
if (con == 3.1)
{
	JA_XOFF = langopt(0, 50);
	global.typer = 37;
	if (global.chapter == 1)
		global.msg[0] = stringsetloc("Is this... the fountain...?/%", "obj_fountainkris_slash_Step_0_gml_49_0");
	if (global.chapter == 2)
		global.msg[0] = stringsetloc("Kris.../%", "obj_fountainkris_slash_Step_0_gml_56_0");
	instance_create(100 + JA_XOFF, 80, obj_writer);
	con = 4;
}
if (con == 4 && !instance_exists(obj_writer))
{
	sussprite = spr_susier_bright;
	con = 3.2;
	alarm[4] = 30;
}
if (con == 4.2)
{
	if (global.chapter == 1)
	{
		global.msg[0] = stringsetloc("Dunno how, but.../", "obj_fountainkris_slash_Step_0_gml_75_0");
		global.msg[1] = stringsetloc("It feels like we&stumbled into/", "obj_fountainkris_slash_Step_0_gml_76_0");
		global.msg[2] = stringsetloc("something really&important, didn't we...?/", "obj_fountainkris_slash_Step_0_gml_77_0");
		global.msg[3] = stringsetloc(".../%", "obj_fountainkris_slash_Step_0_gml_78_0");
	}
	if (global.chapter == 2)
	{
		global.msg[0] = stringsetloc("It looks like we're&here again, huh.../", "obj_fountainkris_slash_Step_0_gml_85_0");
		global.msg[1] = stringsetloc("The Roaring Knight.../", "obj_fountainkris_slash_Step_0_gml_86_0");
		global.msg[2] = stringsetloc("Whatever they are,&they're making&these fountains.../", "obj_fountainkris_slash_Step_0_gml_87_0");
		global.msg[3] = stringsetloc(".../%", "obj_fountainkris_slash_Step_0_gml_88_0");
	}
	instance_create(100 + JA_XOFF, 80, obj_writer);
	con = 6;
}
if (con == 6 && !instance_exists(obj_writer))
{
	sussprite = spr_susieu_bright;
	con = 7;
	alarm[4] = 40;
}
if (con == 8)
{
	if (global.chapter == 1)
	{
		global.msg[0] = stringsetloc("Well, there's no time to&think about that now./", "obj_fountainkris_slash_Step_0_gml_104_0");
		global.msg[1] = stringsetloc("Right now.../", "obj_fountainkris_slash_Step_0_gml_105_0");
		global.msg[2] = stringsetloc("It's time to go home,/", "obj_fountainkris_slash_Step_0_gml_106_0");
		global.msg[3] = stringsetloc("right^1, Kris?/%", "obj_fountainkris_slash_Step_0_gml_107_0");
	}
	if (global.chapter == 2)
	{
		global.msg[0] = stringsetloc("But... is that really&a bad thing...?/", "obj_fountainkris_slash_Step_0_gml_114_0");
		global.msg[1] = stringsetloc("Since they started&showing up,/", "obj_fountainkris_slash_Step_0_gml_115_0");
		global.msg[2] = stringsetloc("Everything's gotten a lot&more interesting,&hasn't it...?/", "obj_fountainkris_slash_Step_0_gml_116_0");
		global.msg[3] = stringsetloc(".../", "obj_fountainkris_slash_Step_0_gml_117_0");
		global.msg[4] = stringsetloc("Well, we don't have to&think about that now.../", "obj_fountainkris_slash_Step_0_gml_118_0");
		global.msg[5] = stringsetloc("Kris, it's your turn./%", "obj_fountainkris_slash_Step_0_gml_119_0");
	}
	instance_create(100 + JA_XOFF, 80, obj_writer);
	con = 8.1;
}
if (con == 8.1 && !instance_exists(obj_writer))
{
	con = 9;
	alarm[4] = 40;
}
if (con == 9 && !instance_exists(obj_writer))
{
	y -= 1;
	image_index += 0.1;
}
if (con == 10)
{
	image_index = 0;
	con = 9.1;
	alarm[4] = 30;
}
if (con == 10.1)
{
	global.typer = 42;
	if (global.chapter == 1)
	{
		global.msg[0] = stringsetloc("(As you stood in front&of the fountain,)/", "obj_fountainkris_slash_Step_0_gml_150_0");
		global.msg[1] = stringsetloc("(You felt something strange.)/", "obj_fountainkris_slash_Step_0_gml_151_0");
		global.msg[2] = stringsetloc("(It was as if)/", "obj_fountainkris_slash_Step_0_gml_152_0");
		global.msg[3] = stringsetloc("(Your very SOUL was glowing...)/%", "obj_fountainkris_slash_Step_0_gml_153_0");
	}
	if (global.chapter == 2)
		global.msg[0] = stringsetloc("(It was as if your very SOUL was glowing...)/%", "obj_fountainkris_slash_Step_0_gml_160_0");
	instance_create(80 + JA_XOFF, 80, obj_writer);
	con = 12;
}
if (con == 12 && !instance_exists(obj_writer))
{
	snd_free_all();
	made = 1;
	instance_create(x + (sprite_width / 2), y + (sprite_width / 2) + 20, obj_darkfountain_event);
	con = 13;
}
