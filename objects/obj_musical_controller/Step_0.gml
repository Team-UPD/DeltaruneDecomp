if (theystoppeddancing == 2 && !instance_exists(obj_writer))
{
	scr_speaker("none");
	theystoppeddancing = 0;
	alarm[0] = 2;
}
if (skiptext == 1)
{
	if (button1_p())
	{
		if (alarm[1] > 1 && alarm[1] <= 45)
		{
			alarm[1] = 1;
			if (alarm[0] > 60)
				alarm[0] = 60;
		}
		if (alarm[0] > 1 && alarm[0] <= 60)
			alarm[0] = 1;
	}
}
if (d == 1)
	global.turntimer = 999;
if (d == 1 && !instance_exists(obj_writer))
{
	d = 0;
	alarm[0] = 61;
	alarm[1] = 1;
}
if (scon == 1)
	scon = 1.5;
if (scon == 1.5 && !instance_exists(obj_writer))
{
	global.turntimer = 999;
	with (obj_writer)
		instance_destroy();
	global.typer = 50;
	whohealed = 0;
	if (instance_exists(obj_sweet_enemy) && instance_exists(obj_kk_enemy) && instance_exists(obj_hatguy_enemy) && global.monsterhp[obj_sweet_enemy.myself] < 2 && global.monsterhp[obj_kk_enemy.myself] < 2 && global.monsterhp[obj_hatguy_enemy.myself] < 2)
		whohealed = 7;
	else if (instance_exists(obj_sweet_enemy) && instance_exists(obj_kk_enemy) && global.monsterhp[obj_sweet_enemy.myself] < 2 && global.monsterhp[obj_kk_enemy.myself] < 2)
		whohealed = 4;
	else if (instance_exists(obj_sweet_enemy) && instance_exists(obj_hatguy_enemy) && global.monsterhp[obj_sweet_enemy.myself] < 2 && global.monsterhp[obj_hatguy_enemy.myself] < 2)
		whohealed = 5;
	else if (instance_exists(obj_hatguy_enemy) && instance_exists(obj_kk_enemy) && global.monsterhp[obj_hatguy_enemy.myself] < 2 && global.monsterhp[obj_kk_enemy.myself] < 2)
		whohealed = 6;
	else if (instance_exists(obj_sweet_enemy) && global.monsterhp[obj_sweet_enemy.myself] < 2)
		whohealed = 1;
	else if (instance_exists(obj_kk_enemy) && global.monsterhp[obj_kk_enemy.myself] < 2)
		whohealed = 2;
	else if (instance_exists(obj_hatguy_enemy) && global.monsterhp[obj_hatguy_enemy.myself] < 2)
		whohealed = 3;
	if (whohealed == 1)
	{
		with (obj_sweet_enemy)
		{
			msgsetloc(0, "I'm at my acoustic limit...", "obj_musical_controller_slash_Step_0_gml_52_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_kk_enemy)
		{
			msgsetloc(0, "Have a sip.", "obj_musical_controller_slash_Step_0_gml_57_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (whohealed == 2)
	{
		with (obj_kk_enemy)
		{
			msgsetloc(0, "Mmm... I'm thirsty.", "obj_musical_controller_slash_Step_0_gml_66_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_hatguy_enemy)
		{
			msgsetloc(0, "(Don't ya mean&you're WOUNDED!?)", "obj_musical_controller_slash_Step_0_gml_71_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (whohealed == 3)
	{
		with (obj_hatguy_enemy)
		{
			msgsetloc(0, "Owww, my hat!! They&scuffed my hat!!", "obj_musical_controller_slash_Step_0_gml_80_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_sweet_enemy)
		{
			msgsetloc(0, "(Stop being dramatic&and heal!!)", "obj_musical_controller_slash_Step_0_gml_85_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (whohealed == 4)
	{
		with (obj_sweet_enemy)
		{
			msgsetloc(0, "Even if we're all beat, we...", "obj_musical_controller_slash_Step_0_gml_94_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_kk_enemy)
		{
			msgsetloc(0, "Can all drink from one milk.", "obj_musical_controller_slash_Step_0_gml_99_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (whohealed == 5)
	{
		with (obj_sweet_enemy)
		{
			msgsetloc(0, "Even if we're all beat, we...", "obj_musical_controller_slash_Step_0_gml_108_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_hatguy_enemy)
		{
			msgsetloc(0, "Can all drink from one milk.", "obj_musical_controller_slash_Step_0_gml_113_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (whohealed == 6)
	{
		with (obj_kk_enemy)
		{
			msgsetloc(0, "Even if we're all beat, we...", "obj_musical_controller_slash_Step_0_gml_122_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_hatguy_enemy)
		{
			msgsetloc(0, "Can all drink from one milk.", "obj_musical_controller_slash_Step_0_gml_127_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	if (whohealed == 7)
	{
		with (obj_sweet_enemy)
		{
			msgsetloc(0, "Even if we're all beat, we...", "obj_musical_controller_slash_Step_0_gml_108_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
		with (obj_kk_enemy)
		{
			msgsetloc(0, "Can all drink from one milk.", "obj_musical_controller_slash_Step_0_gml_127_0");
			scr_enemyblcon(x - 10, global.monstery[myself], 10);
		}
	}
	scon = 1.6;
	milktimer = 0;
}
if (scon == 1.6)
{
	milktimer++;
	if (milktimer >= 60)
	{
		scon = 1.7;
		milktimer = 0;
	}
}
if (scon == 1.7)
{
	with (obj_writer)
		instance_destroy();
	var yy = 180;
	if (whohealed == 1)
		yy = 90;
	if (whohealed == 3)
		yy = 240;
	snd_play(snd_magicsprinkle);
	milk = scr_dark_marker(x - 100, cameray() + yy, spr_checkers_milk);
	with (milk)
	{
		image_speed = 0;
		image_xscale = 4;
		image_yscale = 4;
		image_alpha = 0;
	}
	milk.depth = depth - 1;
	milktimer = 0;
	scon = 2;
}
if (scon == 2)
{
	with (milk)
	{
		image_xscale -= 0.2;
		image_yscale -= 0.2;
		image_alpha += 0.1;
	}
	milktimer += 1;
	if (milktimer >= 10)
	{
		scon = 3;
		milktimer = 0;
		with (milk)
			image_alpha = 1.4;
	}
}
if (scon == 3)
{
	milktimer += 1;
	if (milktimer >= 25)
	{
		scon = 4;
		milktimer = 0;
	}
}
if (scon == 4)
{
	with (milk)
	{
		hspeed += 2;
		image_alpha -= 0.1;
	}
	milktimer += 1;
	if (milktimer == 10)
	{
		if (whohealed == 1 || whohealed == 4 || whohealed == 5 || whohealed == 7)
		{
			with (obj_sweet_enemy)
			{
				global.monsterhp[myself] = global.monstermaxhp[myself];
				healamt = instance_create(global.monsterx[myself], global.monstery[myself], obj_dmgwriter);
				with (healamt)
				{
					delay = 8;
					type = 3;
					damage = global.monstermaxhp[obj_sweet_enemy.myself];
					specialmessage = 3;
				}
				hanim = instance_create(x, y, obj_healanim);
				hanim.target = id;
			}
		}
		if (whohealed == 2 || whohealed == 4 || whohealed == 6 || whohealed == 7)
		{
			with (obj_kk_enemy)
			{
				global.monsterhp[myself] = global.monstermaxhp[myself];
				healamt = instance_create(global.monsterx[myself], global.monstery[myself], obj_dmgwriter);
				with (healamt)
				{
					delay = 8;
					type = 3;
					damage = global.monstermaxhp[obj_kk_enemy.myself];
					specialmessage = 3;
				}
				hanim = instance_create(x, y, obj_healanim);
				hanim.target = id;
			}
		}
		if (whohealed == 3 || whohealed == 5 || whohealed == 6 || whohealed == 7)
		{
			with (obj_hatguy_enemy)
			{
				global.monsterhp[myself] = global.monstermaxhp[myself];
				healamt = instance_create(global.monsterx[myself], global.monstery[myself], obj_dmgwriter);
				with (healamt)
				{
					delay = 8;
					type = 3;
					damage = global.monstermaxhp[obj_hatguy_enemy.myself];
					specialmessage = 3;
				}
				hanim = instance_create(x, y, obj_healanim);
				hanim.target = id;
			}
		}
	}
	if (milktimer >= 15)
	{
		with (milk)
			instance_destroy();
		scon = 5;
		milktimer = 0;
	}
}
if (scon == 5)
{
	milktimer += 1;
	if (milktimer >= 30)
	{
		with (obj_writer)
			instance_destroy();
		scon = 6;
		if (whohealed == 1)
			msgsetloc(0, "* SWEET's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_260_0");
		if (whohealed == 2)
			msgsetloc(0, "* K_K's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_261_0");
		if (whohealed == 3)
			msgsetloc(0, "* CAPN's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_262_0");
		if (whohealed == 4)
			msgsetloc(0, "* SWEET's and K_K's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_263_0");
		if (whohealed == 5)
			msgsetloc(0, "* SWEET's and CAPN's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_264_0");
		if (whohealed == 6)
			msgsetloc(0, "* K_K's and CAPN's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_265_0");
		if (whohealed == 7)
		{
			msgsetloc(0, "* SWEET's and K_K's HP went up!/", "obj_musical_controller_slash_Step_0_gml_284_0");
			msgnextloc("* CAPN's HP went up!/%", "obj_musical_controller_slash_Step_0_gml_262_0");
		}
		scr_battletext_default();
	}
}
if (scon == 6)
{
	global.turntimer = 999;
	if (!instance_exists(obj_writer))
	{
		global.fc = 0;
		scon = 7;
		milktimer = 0;
		global.turntimer = 5;
	}
}
if (scon == 7)
{
	if (i_ex(obj_battlecontroller) && obj_battlecontroller.alarm[2] > 1)
	{
		scon = 0;
		obj_battlecontroller.alarm[2] = 1;
	}
}
