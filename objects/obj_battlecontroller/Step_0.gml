if (victory == 1 && victoried == 0)
{
	global.faceaction[0] = 0;
	global.faceaction[1] = 0;
	global.faceaction[2] = 0;
	global.battleend = 1;
	global.mnfight = -1;
	global.myfight = 7;
	with (battlewriter)
		instance_destroy();
	with (obj_face)
		instance_destroy();
	with (obj_smallface)
		instance_destroy();
	for (i = 0; i < 4; i += 1)
	{
		if (global.hp[i] < 1)
			global.hp[i] = round(global.maxhp[i] / 8);
	}
	lastbattlewriter = 32482473284732;
	if (skipvictory == 0)
	{
		global.monstergold[3] += floor(global.tension / 10);
		if (global.charweapon[1] == 8)
			global.monstergold[3] += floor(global.monstergold[3] / 20);
		global.gold += global.monstergold[3];
		global.xp += global.monsterexp[3];
		global.fc = 0;
		global.fe = 0;
		global.battlemsg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_battlecontroller_slash_Step_0_gml_40_0"), string(global.monsterexp[3]), string(global.monstergold[3]));
		global.msg[0] = global.battlemsg[0];
		global.typer = global.battletyper;
		lastbattlewriter = scr_battletext();
		for (i = 0; i < 3; i += 1)
		{
			with (global.charinstance[i])
			{
				state = 7;
				hurt = 0;
				hurttimer = 0;
			}
		}
	}
	victoried = 1;
	victortimer = 0;
	if (skipvictory == 1)
		victortimer = -20;
	with (obj_tensionbar)
	{
		alarm[5] = 15;
		hspeed = -10;
		friction = -0.4;
	}
	if (instance_exists(obj_hathyfightevent))
	{
		with (obj_hathyfightevent)
			con = 30;
		victoried = 2;
		with (lastbattlewriter)
			instance_destroy();
	}
}
if (victoried == 1)
{
	victortimer += 1;
	if (instance_exists(lastbattlewriter) == false && victortimer >= 10)
	{
		intro = 2;
		if (bp <= 0)
			scr_endcombat();
	}
}
if (global.myfight == 0)
{
	if (global.bmenuno == 0)
	{
		if (!instance_exists(battlewriter))
		{
			global.msg[0] = global.battlemsg[0];
			global.typer = global.battletyper;
			scr_battletext();
		}
		if (left_p() == 1 && lbuffer < 0)
		{
			if (global.bmenucoord[0][global.charturn] == 0)
				global.bmenucoord[0][global.charturn] = 4;
			else
				global.bmenucoord[0][global.charturn] -= 1;
			movenoise = 1;
			rbuffer = 1;
		}
		if (right_p() == 1 && rbuffer < 0)
		{
			if (global.bmenucoord[0][global.charturn] == 4)
				global.bmenucoord[0][global.charturn] = 0;
			else
				global.bmenucoord[0][global.charturn] += 1;
			movenoise = 1;
			lbuffer = 1;
		}
		if (button1_p() == 1 && twobuffer < 0)
		{
			onebuffer = 1;
			selnoise = 1;
			if (global.bmenucoord[0][global.charturn] == 0)
				global.bmenuno = 1;
			if (global.bmenucoord[0][global.charturn] == 1 && global.char[global.charturn] != 1)
			{
				onebuffer = 1;
				global.bmenuno = 2;
			}
			if (global.bmenucoord[0][global.charturn] == 1 && global.char[global.charturn] == 1)
			{
				onebuffer = 1;
				global.bmenuno = 11;
			}
			if (global.bmenucoord[0][global.charturn] == 2 && tempitem[0][global.charturn] != 0)
			{
				onebuffer = 1;
				global.bmenuno = 4;
				scr_iteminfo_temp(global.charturn);
				for (i = 0; i < 12; i += 1)
				{
					if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0 && global.bmenucoord[4][global.charturn] > 0)
						global.bmenucoord[4][global.charturn] -= 1;
				}
			}
			if (global.bmenucoord[0][global.charturn] == 3)
			{
				onebuffer = 1;
				global.bmenuno = 12;
			}
			if (global.bmenucoord[0][global.charturn] == 4)
			{
				scr_tensionheal(40);
				global.faceaction[global.charturn] = 4;
				global.charaction[global.charturn] = 10;
				scr_nexthero();
			}
		}
		if (button2_p() == 1 && onebuffer < 0 && global.charturn > 0)
		{
			twobuffer = 1;
			movenoise = 1;
			scr_prevhero();
		}
		with (battlewriter)
			depth = 3;
		with (obj_face_parent)
			depth = 3;
		with (obj_smallface)
			depth = 3;
	}
	if (global.bmenuno == 2)
	{
		with (battlewriter)
			skipme = 1;
		with (battlewriter)
			depth = 10;
		with (obj_face_parent)
			depth = 10;
		with (obj_smallface)
			depth = 10;
		thischar = global.char[global.charturn];
		if (right_p())
		{
			cango = 1;
			spellcoord = global.bmenucoord[2][global.charturn];
			if (spellcoord < 11)
			{
				if (global.spell[thischar][global.bmenucoord[2][global.charturn] + 1] == 0)
				{
					cango = 0;
					if ((spellcoord % 2) == 1 && spellcoord > 0)
						global.bmenucoord[2][global.charturn] -= 1;
				}
			}
			else
			{
				global.bmenucoord[2][global.charturn] -= 1;
				cango = 0;
			}
			if (cango == 1)
			{
				if ((spellcoord % 2) == 0)
					global.bmenucoord[2][global.charturn] += 1;
				else
					global.bmenucoord[2][global.charturn] -= 1;
			}
		}
		if (left_p())
		{
			cango = 1;
			spellcoord = global.bmenucoord[2][global.charturn];
			if (global.spell[thischar][1] != 0)
			{
				if ((spellcoord % 2) == 0)
					global.bmenucoord[2][global.charturn] += 1;
				else
					global.bmenucoord[2][global.charturn] -= 1;
			}
		}
		if (down_p())
		{
			spellcoord = global.bmenucoord[2][global.charturn];
			cango = 1;
			if (spellcoord >= 10)
			{
				cango = 0;
			}
			else
			{
				if (global.spell[thischar][spellcoord + 2] == 0)
					cango = 0;
				if (spellcoord == 5 && global.spell[thischar][6] != 0 && global.spell[thischar][7] == 0)
					cango = 2;
			}
			if (cango != 0)
			{
				if (cango == 1)
					global.bmenucoord[2][global.charturn] += 2;
				if (cango == 2)
					global.bmenucoord[2][global.charturn] = 6;
			}
		}
		if (up_p())
		{
			spellcoord = global.bmenucoord[2][global.charturn];
			cango = 1;
			if (spellcoord <= 1)
				cango = 0;
			if (cango == 1)
				global.bmenucoord[2][global.charturn] -= 2;
		}
		global.tensionselect = global.spellcost[thischar][global.bmenucoord[2][global.charturn]];
		if (button1_p() && global.spell[thischar][global.bmenucoord[2][global.charturn]] != 0 && onebuffer < 0)
		{
			if (global.spellcost[thischar][global.bmenucoord[2][global.charturn]] <= global.tension)
			{
				onebuffer = 2;
				global.bmenuno = 0;
				selnoise = 1;
				scr_spellinfo(global.spell[thischar][global.bmenucoord[2][global.charturn]]);
				if (spelltarget == 0)
					scr_spellconsumeb();
				if (spelltarget == 1)
					global.bmenuno = 8;
				if (spelltarget == 2)
					global.bmenuno = 3;
			}
		}
		if (button2_p() && onebuffer < 0)
		{
			global.tensionselect = 0;
			twobuffer = 1;
			global.bmenuno = 0;
			movenoise = 1;
		}
	}
	if (global.bmenuno == 4)
	{
		with (battlewriter)
			skipme = 1;
		with (battlewriter)
			depth = 10;
		with (obj_face_parent)
			depth = 10;
		with (obj_smallface)
			depth = 10;
		if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0)
			global.bmenucoord[4][global.charturn] -= 1;
		if (right_p())
		{
			cango = 1;
			itemcoord = global.bmenucoord[4][global.charturn];
			if (itemcoord < 11)
			{
				if (tempitem[global.bmenucoord[4][global.charturn] + 1][global.charturn] == 0)
				{
					cango = 0;
					if ((itemcoord % 2) == 1 && itemcoord > 0)
						global.bmenucoord[4][global.charturn] -= 1;
				}
			}
			else
			{
				global.bmenucoord[4][global.charturn] -= 1;
				cango = 0;
			}
			if (cango == 1)
			{
				if ((itemcoord % 2) == 0)
					global.bmenucoord[4][global.charturn] += 1;
				else
					global.bmenucoord[4][global.charturn] -= 1;
			}
		}
		if (left_p())
		{
			cango = 1;
			itemcoord = global.bmenucoord[4][global.charturn];
			if (tempitem[1][global.charturn] != 0)
			{
				if ((itemcoord % 2) == 0)
					global.bmenucoord[4][global.charturn] += 1;
				else
					global.bmenucoord[4][global.charturn] -= 1;
			}
		}
		if (down_p())
		{
			itemcoord = global.bmenucoord[4][global.charturn];
			cango = 1;
			if (itemcoord >= 10)
			{
				cango = 0;
			}
			else
			{
				if (tempitem[itemcoord + 2][global.charturn] == 0)
					cango = 0;
				if (itemcoord == 5 && tempitem[6][global.charturn] != 0 && tempitem[7][global.charturn] == 0)
					cango = 2;
			}
			if (cango != 0)
			{
				if (cango == 1)
					global.bmenucoord[4][global.charturn] += 2;
				if (cango == 2)
					global.bmenucoord[4][global.charturn] = 6;
			}
		}
		if (up_p())
		{
			itemcoord = global.bmenucoord[4][global.charturn];
			cango = 1;
			if (itemcoord <= 1)
				cango = 0;
			if (cango == 1)
				global.bmenucoord[4][global.charturn] -= 2;
		}
		if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0)
			global.bmenucoord[4][global.charturn] -= 1;
		if (button1_p() && tempitem[global.bmenucoord[4][global.charturn]][global.charturn] != 0 && onebuffer < 0)
		{
			onebuffer = 2;
			global.bmenuno = 0;
			selnoise = 1;
			scr_iteminfo(tempitem[global.bmenucoord[4][global.charturn]][global.charturn]);
			if (itemtarget == 0 || itemtarget == 2)
				scr_itemconsumeb();
			if (itemtarget == 1)
				global.bmenuno = 7;
		}
		if (button2_p() && onebuffer < 0)
		{
			twobuffer = 1;
			global.bmenuno = 0;
			movenoise = 1;
		}
	}
	if (global.bmenuno == 9)
	{
		thisenemy = global.bmenucoord[11][global.charturn];
		if (right_p())
		{
			cango = 1;
			actcoord = global.bmenucoord[9][global.charturn];
			if (actcoord < 5)
			{
				if (global.canact[thisenemy][global.bmenucoord[9][global.charturn] + 1] == 0)
				{
					cango = 0;
					if ((actcoord % 2) == 1 && actcoord > 0)
						global.bmenucoord[9][global.charturn] -= 1;
				}
			}
			else
			{
				global.bmenucoord[9][global.charturn] -= 1;
				cango = 0;
			}
			if (cango == 1)
			{
				if ((actcoord % 2) == 0)
					global.bmenucoord[9][global.charturn] += 1;
				else
					global.bmenucoord[9][global.charturn] -= 1;
			}
		}
		if (left_p())
		{
			cango = 1;
			actcoord = global.bmenucoord[9][global.charturn];
			if ((actcoord % 2) == 0)
			{
				if (global.canact[thisenemy][actcoord + 1] != 0)
					global.bmenucoord[9][global.charturn] += 1;
			}
			else
			{
				global.bmenucoord[9][global.charturn] -= 1;
			}
		}
		if (down_p())
		{
			actcoord = global.bmenucoord[9][global.charturn];
			cango = 1;
			if (actcoord >= 4)
				cango = 0;
			else if (global.canact[thisenemy][actcoord + 2] == 0)
				cango = 0;
			if (cango != 0)
			{
				if (cango == 1)
					global.bmenucoord[9][global.charturn] += 2;
			}
		}
		if (up_p())
		{
			actcoord = global.bmenucoord[9][global.charturn];
			cango = 1;
			if (actcoord <= 1)
				cango = 0;
			if (cango == 1)
				global.bmenucoord[9][global.charturn] -= 2;
		}
		global.tensionselect = global.actcost[thisenemy][global.bmenucoord[9][global.charturn]];
		canpress = 1;
		if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 2 || global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
		{
			if (havechar[1] == 0 || global.hp[2] <= 0)
				canpress = 0;
		}
		if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 3 || global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
		{
			if (havechar[2] == 0 || global.hp[3] <= 0)
				canpress = 0;
		}
		if (canpress == 1)
		{
			if (button1_p() && global.canact[thisenemy][global.bmenucoord[9][global.charturn]] == 1 && global.tension >= global.tensionselect && onebuffer < 0)
			{
				onebuffer = 2;
				global.bmenuno = 0;
				selnoise = 1;
				global.tension -= global.actcost[thisenemy][global.bmenucoord[9][global.charturn]];
				global.tensionselect = 0;
				if (instance_exists(global.monsterinstance[thisenemy]))
					global.monsterinstance[thisenemy].acting = global.bmenucoord[9][global.charturn] + 1;
				global.acting[0] = 1;
				if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 2)
					global.acting[charpos[1]] = 1;
				if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 3)
					global.acting[charpos[2]] = 1;
				if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
				{
					global.acting[2] = 1;
					global.acting[1] = 1;
				}
				for (i = 0; i < 3; i += 1)
				{
					if (global.acting[i] == 1)
					{
						global.faceaction[i] = 6;
						global.charaction[i] = 9;
					}
				}
				scr_nexthero();
			}
		}
		if (button2_p() && onebuffer < 0)
		{
			global.tensionselect = 0;
			twobuffer = 1;
			global.bmenuno = 11;
			movenoise = 1;
		}
	}
	if (global.bmenuno == 7 || global.bmenuno == 1 || global.bmenuno == 8 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
	{
		with (battlewriter)
			skipme = 1;
		with (battlewriter)
			depth = 10;
		with (obj_face_parent)
			depth = 10;
		with (obj_smallface)
			depth = 10;
		if (button2_p() && onebuffer < 0)
		{
			twobuffer = 1;
			if (global.bmenuno == 1 || global.bmenuno == 11 || global.bmenuno == 12)
				global.bmenuno = 0;
			if (global.bmenuno == 7)
				global.bmenuno = 4;
			if (global.bmenuno == 8 || global.bmenuno == 3)
				global.bmenuno = 2;
			movenoise = 1;
		}
		if (global.bmenuno == 7 || global.bmenuno == 1 || global.bmenuno == 8 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
		{
			if (global.bmenuno == 7 || global.bmenuno == 8)
			{
				for (i = 0; i < 3; i += 1)
				{
					ht[i] = 0;
					if (global.char[i] > 0)
						ht[i] = 1;
				}
			}
			if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
			{
				for (i = 0; i < 3; i += 1)
					ht[i] = global.monster[i];
			}
			if (global.bmenucoord[global.bmenuno][global.charturn] == 2 && ht[2] == 0)
				global.bmenucoord[global.bmenuno][global.charturn] = 0;
			if (global.bmenucoord[global.bmenuno][global.charturn] == 0 && ht[0] == 0)
				global.bmenucoord[global.bmenuno][global.charturn] = 1;
			if (global.bmenucoord[global.bmenuno][global.charturn] == 1 && ht[1] == 0)
				global.bmenucoord[global.bmenuno][global.charturn] = 0;
			if (global.bmenucoord[global.bmenuno][global.charturn] == 0 && ht[0] == 0)
				global.bmenucoord[global.bmenuno][global.charturn] = 2;
			if (down_p() == 1)
			{
				if (global.bmenucoord[global.bmenuno][global.charturn] == 0)
				{
					if (ht[1] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 1;
					}
					else if (ht[2] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 2;
					}
				}
				else if (global.bmenucoord[global.bmenuno][global.charturn] == 1)
				{
					if (ht[2] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 2;
					}
					else if (ht[0] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 0;
					}
				}
				else if (global.bmenucoord[global.bmenuno][global.charturn] == 2)
				{
					if (ht[0] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 0;
					}
					else if (ht[1] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 1;
					}
				}
			}
			if (up_p() == 1)
			{
				if (global.bmenucoord[global.bmenuno][global.charturn] == 0)
				{
					if (ht[2] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 2;
					}
					else if (ht[1] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 1;
					}
				}
				else if (global.bmenucoord[global.bmenuno][global.charturn] == 1)
				{
					if (ht[0] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 0;
					}
					else if (ht[2] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 2;
					}
				}
				else if (global.bmenucoord[global.bmenuno][global.charturn] == 2)
				{
					if (ht[1] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 1;
					}
					else if (ht[0] == 1)
					{
						movenoise = 1;
						global.bmenucoord[global.bmenuno][global.charturn] = 0;
					}
				}
			}
			if (button1_p() && onebuffer < 0)
			{
				onebuffer = 1;
				selnoise = 1;
				if (global.bmenuno == 1)
				{
					global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn];
					global.faceaction[global.charturn] = 1;
					global.charaction[global.charturn] = 1;
					scr_nexthero();
				}
				if (global.bmenuno == 7)
				{
					global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn];
					scr_itemconsumeb();
				}
				if (global.bmenuno == 8 || global.bmenuno == 3)
				{
					global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn];
					scr_spellconsumeb();
				}
				if (global.bmenuno == 11)
				{
					global.bmenuno = 9;
					actcoord = global.bmenucoord[9][global.charturn];
					thisenemy = global.bmenucoord[11][global.charturn];
					for (i = 0; i < 6; i += 1)
					{
						if (global.canact[thisenemy][actcoord] == 0)
						{
							if (actcoord > 0)
							{
								global.bmenucoord[9][global.charturn] -= 1;
								actcoord -= 1;
							}
						}
					}
					onebuffer = 1;
				}
				if (global.bmenuno == 12)
				{
					global.faceaction[global.charturn] = 10;
					global.chartarget[global.charturn] = global.bmenucoord[global.bmenuno][global.charturn];
					global.charaction[global.charturn] = 2;
					global.charspecial[global.charturn] = 100;
					scr_nexthero();
				}
			}
		}
	}
}
if (movenoise == 1)
{
	snd_play(snd_menumove);
	movenoise = 0;
}
if (grazenoise == 1)
{
	snd_play(snd_graze);
	grazenoise = 0;
}
if (selnoise == 1)
{
	snd_play(snd_select);
	selnoise = 0;
}
if (damagenoise == 1)
{
	snd_play(snd_damage);
	damagenoise = 0;
}
if (laznoise == 1)
{
	snd_play(snd_laz_c);
	laznoise = 0;
}
onebuffer -= 1;
twobuffer -= 1;
lbuffer -= 1;
rbuffer -= 1;
if (global.mnfight == 2 && timeron == 1)
{
	global.turntimer -= 1;
	if (global.turntimer <= 0 && reset == 0)
	{
		with (obj_bulletparent)
			instance_destroy();
		with (obj_bulletgenparent)
			instance_destroy();
		with (obj_darkener)
			darken = 0;
		with (obj_heart)
		{
			instance_create(x, y, obj_returnheart);
			instance_destroy();
		}
		reset = 1;
		if (noreturn == 0)
			alarm[2] = 15;
	}
}
