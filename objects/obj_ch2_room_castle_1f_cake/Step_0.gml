if (obj_npc_room_animated.talked == 1 && !instance_exists(obj_dialoguer) && con == -1 && global.flag[304] == 0)
{
	con = 1;
	global.interact = 1;
	with (obj_caterpillarchara)
	{
		fun = 1;
		image_index = 0;
	}
}
if (con == 1)
{
	con = 3;
	scr_speaker("ralsei");
	msgsetloc(0, "\\E2* Here^1, Kris^1, Susie^1, have a cake!!!/%", "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_21_0");
	d_make();
}
if (con == 3 && !d_ex())
{
	con = 10;
	alarm[0] = 40;
	explosion = instance_create(620, 250, obj_animation);
	snd_play(snd_badexplosion);
	explosion.sprite_index = spr_realisticexplosion;
	cake = scr_dark_marker(590, 250, spr_cauldron_cake);
	cake.depth = explosion.depth - 100;
}
if (con >= 3)
{
	if (i_ex(cake))
	{
		if (con < 11)
			cake.y = clamp(cake.y - 20, -100, 300);
		else
			cake.y += 20;
	}
}
if (con == 11)
{
	var susx = 0;
	var susy = 0;
	with (obj_caterpillarchara)
	{
		if (name == "susie")
		{
			susx = x;
			susy = y;
		}
	}
	cake.x = susx;
	var susid = 0;
	if (cake.y > (susy - 40))
	{
		with (obj_caterpillarchara)
		{
			if (name == "susie")
			{
				ignoredepth = 1;
				sprite_index = spr_susie_chomp;
			}
		}
	}
	if (cake.y > (susy - 80))
	{
		with (obj_caterpillarchara)
		{
			if (name == "susie")
			{
				susid = id;
				image_speed = 0.25;
			}
		}
	}
	if (cake.y > susy)
	{
		con = 12;
		instance_destroy(cake);
		snd_play_pitch(snd_reverse_splat, 1.2);
		snd_play(snd_power);
		healanim = instance_create(susx, susy, obj_healanim);
		healanim.target = susid;
	}
}
if (con == 12)
{
	con = 13;
	alarm[0] = 30;
}
if (con == 14)
{
	con = 15;
	with (obj_caterpillarchara)
	{
		if (name == "susie")
		{
			ignoredepth = 0;
			sprite_index = dsprite;
			image_index = 0;
			image_speed = 0;
		}
	}
	scr_speaker("susie");
	global.fe = 2;
	msgsetloc(0, "\\E2* Hmm^1, a little thick on the frosting./", "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_128_0");
	scr_anyface_next("ralsei", 30);
	msgnextloc("\\EU* ..^1. Th..^1. that was for sharing!/", "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_130_0");
	scr_anyface_next("susie", 2);
	msgnextloc("\\E2* Hey^1, anyone was free to make an interception./%", "obj_ch2_room_castle_1f_cake_slash_Step_0_gml_132_0");
	d_make();
}
if (con == 15 && !d_ex())
{
	with (obj_caterpillarchara)
		fun = 0;
	instance_destroy(healanim);
	if (global.flag[304] == 0)
		global.flag[304] = 1;
	global.interact = 0;
	con = -1;
	instance_destroy();
}
