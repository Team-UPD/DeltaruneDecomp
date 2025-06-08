if (con == 1)
{
	global.interact = 1;
	con = 2;
	alarm[4] = 10;
}
if (con == 2)
	global.interact = 1;
if (con == 3)
{
	global.typer = 12;
	global.fc = 3;
	global.fe = 4;
	global.msg[0] = stringsetloc("\\E4* Ahahaha..^1. DAD^1!&* I can't just SAY that to her!/", "obj_rudy_slash_Step_0_gml_15_0");
	global.msg[1] = stringsetloc("\\E6* Oh my god..^1. I'd DIE^1.&* I'd LITERALLY die./", "obj_rudy_slash_Step_0_gml_16_0");
	scr_rudface(2, 0);
	global.msg[3] = stringsetloc("\\E0* Noelle^1. Sweetheart^1.&* First time I laid eyes on your mother.../", "obj_rudy_slash_Step_0_gml_18_0");
	global.msg[4] = stringsetloc("\\E3* I walked right up and told her she was a HOT piece of work./", "obj_rudy_slash_Step_0_gml_19_0");
	scr_noeface(5, 2);
	global.msg[6] = stringsetloc("\\E2* R...Really?/", "obj_rudy_slash_Step_0_gml_21_0");
	scr_rudface(7, 7);
	global.msg[8] = stringsetloc("\\E7* Yeah^1, she slapped me so hard I blacked out!/%", "obj_rudy_slash_Step_0_gml_23_0");
	con = 4;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 4 && !d_ex())
{
	sprite_index = spr_rudy_laugh;
	snd_play(snd_rudylaugh);
	image_speed = 0.25;
	con = 5;
	alarm[4] = 30;
}
if (con == 6)
{
	image_index = 0;
	snd_stop(snd_rudylaugh);
	sprite_index = spr_rudy_cough;
	snd_play(snd_rudycough);
	con = 7;
	alarm[4] = 30;
}
if (con == 8)
{
	global.typer = 12;
	global.fc = 3;
	global.fe = 4;
	sprite_index = spr_rudy_l;
	global.msg[0] = stringsetloc("\\E4* Hahaha...^1!&* Dad^1, that doesn't help at all!/", "obj_rudy_slash_Step_0_gml_53_0");
	scr_rudface(1, 2);
	global.msg[2] = stringsetloc("\\E2* Anyhow^1, how's Dragon Blazers III^1?&* Beat it yet?/", "obj_rudy_slash_Step_0_gml_55_0");
	scr_noeface(3, 4);
	global.msg[4] = stringsetloc("\\E4* Nah^1, I'm still at the Ice Palace^1.&* I've been kind of.../", "obj_rudy_slash_Step_0_gml_57_0");
	global.msg[5] = stringsetloc("\\E9* ... kind of waiting to finish it with you^1, Dad./", "obj_rudy_slash_Step_0_gml_58_0");
	scr_rudface(6, 4);
	global.msg[7] = stringsetloc("\\E4* ...&* Noelle.../", "obj_rudy_slash_Step_0_gml_60_0");
	global.msg[8] = stringsetloc("\\E5* Maybe..^1.&* Maybe you shouldn't wait./", "obj_rudy_slash_Step_0_gml_61_0");
	scr_noeface(9, 7);
	global.msg[10] = stringsetloc("\\E7* D..^1. Dad?/", "obj_rudy_slash_Step_0_gml_63_0");
	scr_rudface(11, 7);
	global.msg[12] = stringsetloc("\\E7* You should bring it HERE^1!&* I'm bored as hell!/", "obj_rudy_slash_Step_0_gml_65_0");
	scr_noeface(13, 8);
	global.msg[14] = stringsetloc("\\E8* Har har har^1!&* FINE^1, you win^1!&* I'll bring it next time!/", "obj_rudy_slash_Step_0_gml_67_0");
	global.msg[15] = stringsetloc("\\E5* Oh^1, it's getting late.../", "obj_rudy_slash_Step_0_gml_68_0");
	global.msg[16] = stringsetloc("\\E5* Guess I better go^1.&* I've got HOMEWORK./", "obj_rudy_slash_Step_0_gml_69_0");
	scr_rudface(17, 4);
	global.msg[18] = stringsetloc("\\E4* Oh^1.&* That's the group project voice./", "obj_rudy_slash_Step_0_gml_71_0");
	global.msg[19] = stringsetloc("\\E2* Bird guy again^1?&* What's his name^1? Nerdly?/", "obj_rudy_slash_Step_0_gml_72_0");
	scr_noeface(20, 3);
	global.msg[21] = stringsetloc("\\E3* It's^1, um^1, Berdly..^1.&* He's not that bad^1, dad./", "obj_rudy_slash_Step_0_gml_74_0");
	scr_rudface(22, 6);
	global.msg[23] = stringsetloc("\\E6* I'll kick his ass./", "obj_rudy_slash_Step_0_gml_76_0");
	scr_noeface(24, 4);
	global.msg[25] = stringsetloc("\\E4* Hahaha..^1.&* Dad^1, you're not even supposed to get up./", "obj_rudy_slash_Step_0_gml_78_0");
	scr_rudface(26, 7);
	global.msg[27] = stringsetloc("\\E7* Bring him by the window^1! I'll throw something at him!/", "obj_rudy_slash_Step_0_gml_80_0");
	scr_noeface(28, 8);
	global.msg[29] = stringsetloc("\\E8* GOODBYE^1, dad./", "obj_rudy_slash_Step_0_gml_82_0");
	scr_rudface(30, 2);
	global.msg[31] = stringsetloc("\\E2* Bye^1, honey./%", "obj_rudy_slash_Step_0_gml_84_0");
	instance_create(0, 0, obj_dialoguer);
	con = 9;
}
if (con == 9 && !d_ex())
{
	with (n)
	{
		sprite_index = spr_noelle_walk_down_lw;
		vspeed = 2;
		image_speed = 0.25;
	}
	con = 10;
}
if (con == 10)
{
	if (n.y >= 150)
	{
		sprite_index = spr_rudy_d;
		with (n)
		{
			sprite_index = spr_noelle_walk_right_lw;
			hspeed = 2;
			vspeed = 0;
			image_speed = 0.25;
		}
		con = 11;
	}
}
if (con == 11)
{
	if (n.x >= 160)
	{
		with (n)
		{
			sprite_index = spr_noelle_walk_down_lw;
			hspeed = 0;
			vspeed = 0;
			image_speed = 0;
			image_index = 0;
		}
		con = 12;
		alarm[4] = 30;
	}
}
if (con == 13)
{
	global.typer = 12;
	global.fc = 3;
	global.fe = 4;
	global.msg[0] = stringsetloc("* ... oh^1?&* Hi^1, Kris...?/%", "obj_rudy_slash_Step_0_gml_140_0");
	instance_create(0, 0, obj_dialoguer);
	con = 14;
	kcon = 0;
}
if (con == 14 && !d_ex())
{
	with (n)
	{
		vspeed = 3;
		image_speed = 0.25;
		sprite_index = spr_noelle_walk_down_lw;
	}
	con = 15;
	kcon = 1;
	alarm[4] = 30;
}
if (con == 15)
{
	with (obj_mainchara)
	{
		if (x > 140)
			x -= 1;
	}
}
if (con == 16)
{
	instance_create(x, y, obj_npc_room);
	global.facing = 0;
	global.flag[255] = 1;
	global.interact = 0;
	instance_destroy();
	con = 17;
}
