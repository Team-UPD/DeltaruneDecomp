if (ambushed == 0)
{
	scr_ambush();
	ambushed = 1;
}
if (global.monster[myself] == 1)
{
	global.flag[51 + myself] = 4;
	if (global.mnfight == 1 && talked == 0)
	{
		if (attackcon == 0)
		{
			scr_moveheart();
			abletotarget = 1;
			if (global.charcantarget[0] == 0 && global.charcantarget[1] == 0 && global.charcantarget[2] == 0)
				abletotarget = 0;
			mytarget = choose(0, 1, 2);
			if (abletotarget == 1)
			{
				while (global.charcantarget[mytarget] == 0)
					mytarget = choose(0, 1, 2);
			}
			else
			{
				target = 3;
			}
			global.targeted[mytarget] = 1;
			instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
			instance_create(0, 0, obj_darkener);
		}
		global.typer = 45;
		global.fc = 2;
		global.fe = 1;
		global.msg[0] = stringsetloc("* .../%", "obj_ralseienemy_slash_Step_0_gml_36_0");
		if (plot == 0)
		{
			global.fe = 0;
			global.flag[30] = 0;
			global.msg[0] = stringsetloc("* See that \\cRHEART\\cW, Kris?/", "obj_ralseienemy_slash_Step_0_gml_42_0");
			global.msg[1] = stringsetloc("* That's a \\cRSOUL\\cW, the culmination of a HUMAN's being!/", "obj_ralseienemy_slash_Step_0_gml_43_0");
			global.msg[2] = stringsetloc("* Not only does it represent one's WILL and COMPASSION.../", "obj_ralseienemy_slash_Step_0_gml_44_0");
			global.msg[3] = stringsetloc("* But it also has the power to DETERMINE FATE./", "obj_ralseienemy_slash_Step_0_gml_45_0");
			global.msg[4] = stringsetloc("* When enemies attack, BULLETS appear./", "obj_ralseienemy_slash_Step_0_gml_46_0");
			global.msg[5] = stringsetloc("* Please avoid them and protect your team's FATE!/", "obj_ralseienemy_slash_Step_0_gml_47_0");
			global.msg[6] = stringsetloc("* Ready^1, Kris^2?&* Let's try dodging!/%", "obj_ralseienemy_slash_Step_0_gml_48_0");
		}
		if (plot >= 1)
		{
			dial = 0;
			if (global.charaction[0] == 1)
			{
				if (dummyhp > global.monsterhp[0])
					dial = 1;
				if (myhp > global.monsterhp[1])
					dial = 4;
				if (dummyhp == global.monsterhp[0] && myhp == global.monsterhp[1] && plot == 1)
					dial = 2;
				if (dummyhp == global.monsterhp[0] && myhp == global.monsterhp[1] && misstime == 9 && plot == 2)
				{
					dial = 3;
					global.flag[205] = 6;
				}
				if (dial == 4 && hittime >= 2)
				{
					hittime = 3;
					dial = 3;
					global.flag[205] = 3;
				}
				if (dial == 1 && hitdum >= 3)
				{
					hitdum = 4;
					dial = 3;
					global.flag[205] = 4;
				}
			}
			if (global.charaction[0] == 10)
			{
				global.fe = 0;
				global.msg[0] = stringsetloc("* That's DEFENDING^1, Kris^1.&* You'll recover TP and take less damage./", "obj_ralseienemy_slash_Step_0_gml_65_0");
				global.msg[1] = stringsetloc("\\E8* It's not part of this lesson^1, though./%", "obj_ralseienemy_slash_Step_0_gml_66_0");
				if (defendtime == 1)
				{
					global.msg[0] = stringsetloc("* Gee^1, Kris^1!&* You sure are good at defending!/", "obj_ralseienemy_slash_Step_0_gml_70_0");
					global.msg[1] = stringsetloc("\\E8* I'm not attacking^1, you^1, though, so...&* No need to defend!/%", "obj_ralseienemy_slash_Step_0_gml_71_0");
				}
				if (defendtime == 2)
				{
					global.fe = 1;
					global.msg[0] = stringsetloc("* Ummm..^1.&* Kris?/", "obj_ralseienemy_slash_Step_0_gml_77_0");
					global.msg[1] = stringsetloc("\\E8* There are no bullets^1, and you can't use TP.../", "obj_ralseienemy_slash_Step_0_gml_78_0");
					global.msg[2] = stringsetloc("\\E8* So^1, umm^1, maybe you could stop defending?/%", "obj_ralseienemy_slash_Step_0_gml_79_0");
				}
				if (defendtime == 3)
				{
					global.fe = 9;
					global.msg[0] = stringsetloc("* .../%", "obj_ralseienemy_slash_Step_0_gml_86_0");
				}
				if (defendtime >= 4)
				{
					dial = 3;
					global.flag[205] = 5;
				}
				defendtime += 1;
			}
			if (global.charaction[0] == 4)
			{
				global.fe = 8;
				global.msg[0] = stringsetloc("* You've got an item^1!&* That's^1, um^1, great^1, Kris.../%", "obj_ralseienemy_slash_Step_0_gml_96_0");
			}
			if (dial == 1)
			{
				if (plot == 2 && hitdum == 0)
					hitdum = 1;
				plot = 2;
				global.fe = 3;
				if (dummyhp > (global.monsterhp[0] + 50))
				{
					global.msg[0] = stringsetloc("* W-wow^1, Kris^1!&* That was an amazing attack!/", "obj_ralseienemy_slash_Step_0_gml_107_0");
					global.msg[1] = stringsetloc("\\E8* Have you done this before or something...?/", "obj_ralseienemy_slash_Step_0_gml_108_0");
				}
				else
				{
					global.msg[0] = stringsetloc("* Good job^1, Kris^1!&* By the way^1, you'll do more damage.../", "obj_ralseienemy_slash_Step_0_gml_112_0");
					global.msg[1] = stringsetloc("\\E8* Pressing Z when the cursor is RIGHT IN the box on the left!/", "obj_ralseienemy_slash_Step_0_gml_113_0");
				}
				if (misstime >= 6)
				{
					global.fe = 8;
					global.msg[0] = stringsetloc("* Kris^1!&* You did it!!!/", "obj_ralseienemy_slash_Step_0_gml_118_0");
					global.msg[1] = stringsetloc("\\E8* (I was really just about at my limit...)/%", "obj_ralseienemy_slash_Step_0_gml_119_0");
				}
				global.msg[2] = stringsetloc("\\E1* Umm^1, anyway, let's move onto my favorite: \\cYACTING\\cW!/", "obj_ralseienemy_slash_Step_0_gml_121_0");
				global.msg[3] = stringsetloc("\\E0* Selecting the ACT ICON will let you do all sorts of things./", "obj_ralseienemy_slash_Step_0_gml_122_0");
				global.msg[4] = stringsetloc("\\E8* We'll even be able to get through battles without ATTACKing!/%", "obj_ralseienemy_slash_Step_0_gml_123_0");
				global.battlemsg[0] = stringsetloc("* Select the ACT ICON and HUG the Dummy!", "obj_ralseienemy_slash_Step_0_gml_124_0");
				if (hitdum == 1)
				{
					global.fe = 1;
					global.msg[0] = stringsetloc("* Ummm..^1. Kris^1?&* You don't need to hit it anymore./", "obj_ralseienemy_slash_Step_0_gml_130_0");
					global.msg[1] = stringsetloc("\\E8* I already know you're great at attacking!/%", "obj_ralseienemy_slash_Step_0_gml_131_0");
				}
				if (hitdum == 2)
				{
					global.fe = 1;
					global.msg[0] = stringsetloc("* Hey^1, Kris^1?&* I know you like attacking^1, but.../", "obj_ralseienemy_slash_Step_0_gml_137_0");
					global.msg[1] = stringsetloc("\\E8* Did you know you can win without having to?/%", "obj_ralseienemy_slash_Step_0_gml_138_0");
				}
				if (hitdum == 3)
				{
					global.fe = 9;
					global.msg[0] = stringsetloc("* .../", "obj_ralseienemy_slash_Step_0_gml_144_0");
					global.msg[1] = stringsetloc("\\E1* Kris^1, could you^1, um^1, stop...?/%", "obj_ralseienemy_slash_Step_0_gml_145_0");
				}
				hitdum += 1;
			}
			if (dial == 2)
			{
				global.fe = 3;
				global.msg[0] = stringsetloc("* Oh^1, sorry^1, Kris^1!&* I forgot to mention^1!&* When you're ATTACKing.../", "obj_ralseienemy_slash_Step_0_gml_154_0");
				global.msg[1] = stringsetloc("\\E8* Press Z again when the cursor goes in the box!/%", "obj_ralseienemy_slash_Step_0_gml_155_0");
				if (misstime >= 1)
				{
					global.fe = 8;
					global.msg[0] = stringsetloc("* It's OK^1, Kris^1!&* You'll get it^1!&* Try again!/%", "obj_ralseienemy_slash_Step_0_gml_159_0");
					if (misstime == 2)
						global.msg[0] = stringsetloc("* Press Z when the white rectangle's in the blue box!/%", "obj_ralseienemy_slash_Step_0_gml_160_0");
					if (misstime == 3)
						global.msg[0] = stringsetloc("* Ummm..^1. you can press Z a lot^1, if it helps!/%", "obj_ralseienemy_slash_Step_0_gml_161_0");
					if (misstime == 4)
						global.msg[0] = stringsetloc("* Kris..^1.&* Please try to press Z./%", "obj_ralseienemy_slash_Step_0_gml_162_0");
					if (misstime == 5)
						global.msg[0] = stringsetloc("* Ummm^1, Kris^1?&* Can you see the white rectangle?/%", "obj_ralseienemy_slash_Step_0_gml_163_0");
					if (misstime == 6)
						global.msg[0] = stringsetloc("* You know rectangles^1?&* They're like messed-up squares?/%", "obj_ralseienemy_slash_Step_0_gml_164_0");
					if (misstime == 7)
					{
						global.fe = 9;
						global.msg[0] = stringsetloc("* .../%", "obj_ralseienemy_slash_Step_0_gml_168_0");
					}
					if (misstime == 8)
					{
						global.fe = 1;
						global.msg[0] = stringsetloc("* Umm^1, why don't we try something else?/%", "obj_ralseienemy_slash_Step_0_gml_173_0");
						global.battlemsg[0] = stringsetloc("* Select the ACT ICON and HUG the Dummy!", "obj_ralseienemy_slash_Step_0_gml_174_0");
						plot = 2;
					}
				}
				misstime += 1;
			}
			if (dial == 3)
			{
				global.fe = 9;
				global.msg[0] = stringsetloc("* .../", "obj_ralseienemy_slash_Step_0_gml_187_0");
				global.msg[1] = stringsetloc("\\E8* Hey^1, Kris^1, I think I've^1, um.../", "obj_ralseienemy_slash_Step_0_gml_188_0");
				global.msg[2] = stringsetloc("\\E1* Reached the limits of what I can teach you today./", "obj_ralseienemy_slash_Step_0_gml_189_0");
				global.msg[3] = stringsetloc("\\E0* Let's go find Susie./%", "obj_ralseienemy_slash_Step_0_gml_190_0");
				if (hittime >= 3)
				{
					global.fe = 2;
					global.msg[0] = stringsetloc("* .../", "obj_ralseienemy_slash_Step_0_gml_195_0");
					global.msg[1] = stringsetloc("* Kris^1, it's um.../", "obj_ralseienemy_slash_Step_0_gml_196_0");
					global.msg[2] = stringsetloc("\\E3* Really hard for me to teach when you're hitting me./", "obj_ralseienemy_slash_Step_0_gml_197_0");
					global.msg[3] = stringsetloc("\\E8* Let's take a break and go find Susie^1, OK?/%", "obj_ralseienemy_slash_Step_0_gml_198_0");
				}
				won = 1;
			}
			if (dial == 4)
			{
				global.fe = 3;
				if (hittime == 0)
				{
					global.msg[0] = stringsetloc("* K-Kris!?/", "obj_ralseienemy_slash_Step_0_gml_212_0");
					global.msg[1] = stringsetloc("\\E1* Y-you must have missed...&* H... Haha.../", "obj_ralseienemy_slash_Step_0_gml_213_0");
					if (plot == 2)
						global.msg[2] = stringsetloc("\\E3* W-wait^1, aren't you supposed to be ACTing!?/%", "obj_ralseienemy_slash_Step_0_gml_218_0");
					if (plot == 1)
					{
						global.msg[2] = stringsetloc("\\E3* A-anyway^1, now that you know how to attack.../", "obj_ralseienemy_slash_Step_0_gml_222_0");
						global.msg[3] = stringsetloc("\\E8* Let's try learning how to ACT^1, OK?/%", "obj_ralseienemy_slash_Step_0_gml_223_0");
						global.battlemsg[0] = stringsetloc("* Select the ACT ICON and HUG the Dummy!", "obj_ralseienemy_slash_Step_0_gml_224_0");
						plot = 2;
					}
				}
				if (hittime == 1)
				{
					global.msg[0] = stringsetloc("* K-Kris!^1?&* D-did you miss again!?/", "obj_ralseienemy_slash_Step_0_gml_231_0");
					global.msg[1] = stringsetloc("\\E1* .../", "obj_ralseienemy_slash_Step_0_gml_232_0");
					global.msg[2] = stringsetloc("\\E2* Though^1, I mean^1, if you wanted to hit me^1, that's ok, too.../%", "obj_ralseienemy_slash_Step_0_gml_233_0");
				}
				hittime += 1;
			}
		}
		scr_battletext();
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		if (instance_exists(obj_writer) == false)
		{
			with (obj_face)
				instance_destroy();
			if (attackcon == 0)
			{
				global.mnfight = 2;
			}
			else
			{
				if (won == 1)
				{
					global.mercymod[0] = 99999;
					global.mercymod[1] = 99999;
				}
				scr_mnendturn();
				dummyhp = global.monsterhp[0];
				myhp = global.monsterhp[1];
			}
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		if (attacks == 0)
			attackcon = 1;
		turns += 1;
		global.turntimer = 999;
		attacked = 1;
		rr = floor(random(0));
		global.typer = 6;
		global.fc = 0;
		if (rr == 0)
			global.battlemsg[0] = stringsetloc("* Ralsei looks on expectedly.", "obj_ralseienemy_slash_Step_0_gml_288_0");
	}
}
if (attackcon < 92 && attackcon > 0)
{
	global.turntimer = 999;
	if (attackcon == 1)
	{
		krishp = global.hp[1];
		b1 = instance_create(obj_heart.x + 150, obj_heart.y, obj_ralseibullet);
		attackcon = 2;
		alarm[5] = 35;
	}
	if (attackcon == 3)
	{
		b2 = instance_create(obj_heart.x - 150, obj_heart.y, obj_ralseibullet);
		attackcon = 4;
		alarm[5] = 35;
	}
	if (attackcon == 5)
	{
		b3 = instance_create(obj_heart.x + 8, obj_heart.y - 150, obj_ralseibullet);
		attackcon = 6;
		alarm[5] = 60;
	}
	if (attackcon == 7)
	{
		attackcon = 8;
		global.turntimer = 999;
		if (krishp == global.hp[1])
		{
			global.fc = 2;
			global.fe = 0;
			global.typer = 45;
			global.msg[0] = stringsetloc("* Yipee^1!&* You did it^1, Kris!/%", "obj_ralseienemy_slash_Step_0_gml_334_0");
			scr_battletext();
			attackcon = 90;
		}
		else
		{
			global.fc = 2;
			global.fe = 3;
			global.typer = 45;
			global.msg[0] = stringsetloc("* O-oopsie..^2.&* Was that too many?/", "obj_ralseienemy_slash_Step_0_gml_343_0");
			global.msg[1] = stringsetloc("\\E8* Here^1, let's try just one!/%", "obj_ralseienemy_slash_Step_0_gml_344_0");
			scr_battletext();
		}
	}
	if (attackcon == 8 && instance_exists(obj_writer) == false)
	{
		with (obj_face)
			instance_destroy();
		krishp = global.hp[1];
		b1 = instance_create(obj_heart.x + 8, obj_heart.y - 150, obj_ralseibullet);
		attackcon = 9;
		alarm[5] = 60;
	}
	if (attackcon == 10)
	{
		attackcon = 11;
		global.turntimer = 999;
		if (krishp == global.hp[1])
		{
			global.fc = 2;
			global.fe = 0;
			global.typer = 45;
			global.msg[0] = stringsetloc("* Yipee^1!&* You did it^1, Kris!/%", "obj_ralseienemy_slash_Step_0_gml_369_0");
			scr_battletext();
			attackcon = 90;
		}
		else
		{
			global.fc = 2;
			global.fe = 9;
			global.typer = 45;
			global.msg[0] = stringsetloc("* .../%", "obj_ralseienemy_slash_Step_0_gml_378_0");
			scr_battletext();
		}
	}
	if (attackcon == 11 && instance_exists(obj_writer) == false)
	{
		b1 = instance_create(xx + 440, obj_heart.y + 8, obj_ralseibullet);
		with (b1)
		{
			special = 1;
			alarm[0] = 40;
		}
		attackcon = 12;
		alarm[5] = 80;
	}
	if (attackcon == 13)
	{
		global.fc = 2;
		global.fe = 8;
		global.typer = 45;
		global.msg[0] = stringsetloc("\\E8* L-look^1, Kris^1!&* You dodged one!/%", "obj_ralseienemy_slash_Step_0_gml_399_0");
		scr_battletext();
		attackcon = 90;
	}
	if (attackcon == 90 && instance_exists(obj_writer) == false)
	{
		global.fc = 2;
		global.fe = 0;
		global.typer = 45;
		global.charturn = 0;
		global.msg[0] = stringsetloc("* Now^1, let's talk about \\cYSELECTING COMMANDS\\cW./", "obj_ralseienemy_slash_Step_0_gml_410_0");
		global.msg[1] = stringsetloc("* These ICONS will let you ISSUE COMMANDS to YOUR TEAM./", "obj_ralseienemy_slash_Step_0_gml_411_0");
		global.msg[2] = stringsetloc("\\E0* The first ICON^1, THE SWORD^1, is the ATTACK COMMAND./", "obj_ralseienemy_slash_Step_0_gml_412_0");
		global.msg[3] = stringsetloc("\\E1* Using it lets you^1, um..^1.&* Hurt people.../", "obj_ralseienemy_slash_Step_0_gml_413_0");
		global.msg[4] = stringsetloc("\\E8* ... w-well^1, I guess we have to defend ourselves sometimes^1, right?/%", "obj_ralseienemy_slash_Step_0_gml_414_0");
		scr_battletext();
		attackcon = 91;
	}
	if (attackcon == 91)
	{
		global.turntimer = 999;
		if (instance_exists(obj_writer) == false)
		{
			dummyhp = global.monsterhp[0];
			myhp = global.monsterhp[1];
			global.turntimer = 0;
			global.battlemsg[0] = stringsetloc("* Select the SWORD ICON to ATTACK the Dummy!/%", "obj_ralseienemy_slash_Step_0_gml_427_0");
			plot = 1;
			attackcon = 92;
		}
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = stringsetloc("* RALSEI - AT 8 DF 12&* The fluffy prince.../%", "obj_ralseienemy_slash_Step_0_gml_447_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		with (obj_herokris)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		actcon = 10;
		global.msg[0] = stringsetloc("* You hug RALSEI./%", "obj_ralseienemy_slash_Step_0_gml_464_0");
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
	if (actcon == 10)
	{
		with (global.charinstance[0])
			visible = 0;
		k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug);
		with (k)
			scr_move_to_point_over_time(global.monsterx[1] - 42, global.monstery[1] - 16, 15);
		actcon = 11;
		alarm[4] = 25;
	}
	if (actcon == 12)
	{
		sprite_index = spr_ralseib_idle_enemy_blush;
		with (k)
			image_speed = 0.25;
		actcon = 13;
		alarm[4] = 12;
	}
	if (actcon == 14)
	{
		with (k)
			image_speed = 0;
		actcon = 15;
	}
	if (actcon == 15 && !instance_exists(obj_writer))
	{
		global.typer = 45;
		global.fc = 2;
		global.fe = 2;
		global.msg[0] = stringsetloc("* K..^1. Kris!?/%", "obj_ralseienemy_slash_Step_0_gml_504_0");
		if (hugtime == 0)
		{
			global.msg[0] = stringsetloc("* K..^1. Kris!?/", "obj_ralseienemy_slash_Step_0_gml_508_0");
			global.msg[1] = stringsetloc("\\E8* Ummm^1, I don't think^1, um.../", "obj_ralseienemy_slash_Step_0_gml_509_0");
			global.msg[2] = stringsetloc("* This is what you're supposed to be doing./", "obj_ralseienemy_slash_Step_0_gml_510_0");
			global.msg[3] = stringsetloc("\\E2* (But I don't really want to tell you to stop...)/%", "obj_ralseienemy_slash_Step_0_gml_511_0");
		}
		if (hugtime == 1)
		{
			global.msg[0] = stringsetloc("* Kris!?/", "obj_ralseienemy_slash_Step_0_gml_516_0");
			global.msg[1] = stringsetloc("\\E2* Umm^1, if that's what you r-really want.../", "obj_ralseienemy_slash_Step_0_gml_517_0");
			global.msg[2] = stringsetloc("\\E8* Then that's a victory in my book^1!&* You win!/%", "obj_ralseienemy_slash_Step_0_gml_518_0");
			global.flag[205] = 2;
			won = 1;
		}
		hugtime += 1;
		scr_battletext();
		actcon = 16;
	}
	if (actcon == 16 && !instance_exists(obj_writer))
	{
		with (myface)
			instance_destroy();
		with (k)
			image_speed = -0.25;
		actcon = 17;
		alarm[4] = 12;
	}
	if (actcon == 18)
	{
		with (k)
			image_speed = 0;
		with (k)
			scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15);
		actcon = 19;
		alarm[4] = 25;
	}
	if (actcon == 20)
	{
		sprite_index = spr_ralseib_idle_enemy;
		with (k)
			instance_destroy();
		global.charinstance[0].visible = 1;
		actcon = 1;
		if (won == 1)
		{
			global.mercymod[0] = 999999;
			global.mercymod[1] = 999999;
		}
	}
}
if (con == 1)
{
	alarm[4] = 5;
	con = 2;
}
if (con == 3)
{
	global.typer = 7;
	global.msg[0] = stringsetloc("H-hey^1, wait&a second.../", "obj_ralseienemy_slash_Step_0_gml_575_0");
	global.msg[1] = stringsetloc("My bike's&running&out of&gas...!/", "obj_ralseienemy_slash_Step_0_gml_576_0");
	global.msg[2] = stringsetloc("Alright,&you punk-&a-roos!/", "obj_ralseienemy_slash_Step_0_gml_577_0");
	global.msg[3] = stringsetloc("You got&got lucky&this time!/", "obj_ralseienemy_slash_Step_0_gml_578_0");
	global.msg[4] = stringsetloc("But next&time^1,&you're&gonna&suffer!!!/", "obj_ralseienemy_slash_Step_0_gml_579_0");
	global.msg[5] = stringsetloc("See you&in the&next hell^1,&losers!/%", "obj_ralseienemy_slash_Step_0_gml_580_0");
	con = 4;
	mywriter = instance_create(x - 160, y - 30, obj_writer);
}
if (con == 4 && !instance_exists(obj_writer))
{
	hspeed = 20;
	con = 5;
	alarm[4] = 15;
	with (obj_battlecontroller)
	{
		noreturn = 0;
		alarm[2] = 17;
	}
}
if (con == 6)
{
	global.monsterexp[myself] -= 0;
	global.monstergold[myself] += 10;
	scr_monsterdefeat();
	instance_destroy();
	con = 7;
}
