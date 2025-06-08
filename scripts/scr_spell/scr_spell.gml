function scr_spell(arg0, arg1)
{
	spell = arg0;
	caster = arg1;
	star = global.chartarget[arg1];
	global.spelldelay = 10;
	var item_use = false;
	switch (spell)
	{
		case 0:
			break;
		case 1:
			cancelattack = 0;
			if (global.monster[star] == 0)
				scr_retarget_spell();
			if (cancelattack == 0)
			{
				damage = ceil((global.battleat[arg1] * 10) - (global.monsterdf[star] * 3));
				if (global.automiss[star] == 1)
					damage = 0;
				scr_damage_enemy(star, damage);
				attack = instance_create(global.monsterx[star] + random(6), global.monstery[star] + random(6), obj_basicattack);
				attack.sprite_index = spr_attack_mash1;
				dm.delay = 8;
			}
			global.spelldelay = 30;
			break;
		case 2:
			healnum = global.battlemag[arg1] * 5;
			scr_heal(star, healnum);
			global.charinstance[star].healnum = healnum;
			with (global.charinstance[star])
			{
				ha = instance_create(x, y, obj_healanim);
				ha.target = id;
				dmgwr = scr_dmgwriter_selfchar();
				with (dmgwr)
				{
					delay = 8;
					type = 3;
				}
				if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
				{
					with (dmgwr)
						specialmessage = 3;
				}
				dmgwr.damage = healnum;
				tu += 1;
			}
			global.spelldelay = 15;
			break;
		case 3:
			if (global.monster[star] == 0)
				scr_retarget_spell();
			if (global.monster[star] == 1)
			{
				if (global.monsterstatus[star] == 1)
				{
					with (global.monsterinstance[star])
					{
						if (global.monstertype[myself] != 19 && global.monstertype[myself] != 3 && global.monstertype[myself] != 52 && global.monstertype[myself] != 43)
						{
							var yoffy;
							if (global.monstertype[myself] == 33)
								yoffy = -60;
							else
								yoffy = 0;
							_pspell = instance_create(global.monsterx[myself], global.monstery[myself] + yoffy, obj_pacifyspell);
							_pspell.con = 20;
							_pspell.target = id;
							global.flag[51 + myself] = 3;
							event_user(10);
							scr_monsterdefeat();
						}
						else
						{
							if (global.monstertype[myself] == 52)
							{
								_pspell = instance_create(global.monsterx[myself], global.monstery[myself], obj_pacifyspell);
								_pspell.con = 20;
								_pspell.target = id;
							}
							if (global.monstertype[myself] == 43)
							{
								_pspell = instance_create(global.monsterx[myself], global.monstery[myself], obj_pacifyspell);
								_pspell.con = 20;
								_pspell.target = id;
								global.flag[51 + myself] = 3;
								with (obj_berdlyb_enemy)
									endcon = 1;
								exit;
							}
							pacifycon = 1;
							global.spelldelay = 999;
						}
					}
				}
				else
				{
					if (global.monstertype[myself] == 52)
						pacifycon = -2;
					_pspell = instance_create(0, 0, obj_pacifyspell);
					_pspell.target = global.monsterinstance[star];
					_pspell.fail = 1;
				}
			}
			global.spelldelay = 20;
			break;
		case 4:
			cancelattack = 0;
			global.spelldelay = 30;
			if (global.monster[star] == 0)
				scr_retarget_spell();
			if (cancelattack == 0)
			{
				global.spelldelay = 70;
				damage = ceil(((global.battlemag[arg1] * 5) + (global.battleat[arg1] * 11)) - (global.monsterdf[star] * 3));
				if (global.automiss[star] == 1)
					damage = 0;
				attack = instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim);
				attack.damage = damage;
				attack.star = star;
				attack.caster = caster;
				attack.target = global.monsterinstance[star];
			}
			break;
		case 5:
			cancelattack = 0;
			global.spelldelay = 30;
			if (global.monster[star] == 0)
				scr_retarget_spell();
			if (cancelattack == 0)
			{
				global.spelldelay = 70;
				damage = ceil(((global.battlemag[arg1] * 6) + (global.battleat[arg1] * 13)) - (global.monsterdf[star] * 6));
				if (global.automiss[star] == 1)
					damage = 0;
				attack = instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim);
				attack.damage = damage;
				attack.star = star;
				attack.caster = caster;
				attack.target = global.monsterinstance[star];
				attack.red = 1;
			}
			break;
		case 6:
			healnum = ceil(global.battlemag[arg1] * 5.5);
			for (i = 0; i < 3; i += 1)
			{
				scr_heal(i, healnum);
				global.charinstance[i].healnum = healnum;
				with (global.charinstance[i])
				{
					ha = instance_create(x, y, obj_healanim);
					ha.target = id;
					dmgwr = scr_dmgwriter_selfchar();
					with (dmgwr)
					{
						delay = 8;
						type = 3;
					}
					if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
					{
						with (dmgwr)
							specialmessage = 3;
					}
					dmgwr.damage = healnum;
					tu += 1;
				}
			}
			global.spelldelay = 15;
			break;
		case 8:
			var _mistcount = 0;
			for (_spelli = 0; _spelli < 3; _spelli++)
			{
				if (global.monster[_spelli] == 1)
				{
					with (global.monsterinstance[_spelli])
					{
						_icemist = instance_create(global.monsterx[myself], global.monstery[myself], obj_spell_mist);
						_icemist.target = id;
						_icemist.myself = myself;
						_icemist.initdelay = _mistcount * 10;
						_mistcount++;
					}
				}
			}
			global.spelldelay = 20 + (_mistcount * 10);
			break;
		case 9:
			cancelattack = 0;
			global.spelldelay = 30;
			if (global.monster[star] == 0)
				scr_retarget_spell();
			if (cancelattack == 0)
			{
				global.flag[925]++;
				var minbattlemag = clamp(global.battlemag[arg1] - 10, 1, 999);
				global.spelldelay = 40;
				damage = ceil((minbattlemag * 30) + 90 + random(10));
				attack = instance_create(global.monsterx[star], global.monstery[star], obj_icespell);
				attack.damage = damage;
				attack.star = star;
				attack.caster = caster;
				attack.target = global.monsterinstance[star];
			}
			break;
		case 10:
			cancelattack = 0;
			global.spelldelay = 30;
			if (scr_monsterpop() == 0)
				cancelattack = 1;
			if (cancelattack == 0)
			{
				global.spelldelay = 30;
				damage = ceil((global.battlemag[arg1] * 40) + 600);
				attack = instance_create(x, y, obj_spell_snowgrave);
				attack.caster = caster;
				attack.damage = damage;
				global.spelldelay = 140;
				if (instance_exists(obj_berdlyb2_enemy))
				{
					global.spelldelay = 999999;
					attack.textwait = 1;
				}
			}
			break;
		case 11:
			healnum = global.battlemag[arg1] + 1;
			scr_heal(star, healnum);
			global.charinstance[star].healnum = healnum;
			with (global.charinstance[star])
			{
				ha = instance_create(x, y, obj_healanim);
				ha.target = id;
				dmgwr = scr_dmgwriter_selfchar();
				with (dmgwr)
				{
					delay = 8;
					type = 3;
				}
				if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
				{
					with (dmgwr)
						specialmessage = 3;
				}
				dmgwr.damage = healnum;
				tu += 1;
			}
			global.spelldelay = 15;
			if (global.encounterno == 50)
			{
				if (i_ex(obj_omawaroid_enemy))
					obj_omawaroid_enemy.ultimatehealprompt = 1;
			}
			break;
		case 100:
			if (global.monster[star] == 0)
				scr_retarget_spell();
			if (global.monster[star] == 1)
			{
				if (global.mercymod[star] >= 100)
				{
					if (global.monstertype[star] != 3 && global.monstertype[star] != 52)
					{
						with (global.monsterinstance[star])
						{
							global.flag[51 + myself] = 2;
							event_user(10);
							scr_monsterdefeat();
						}
					}
					else
					{
						with (global.monsterinstance[star])
							sparecon = 1;
					}
				}
				else
				{
					scr_mercyadd(star, global.sparepoint[star]);
					_pspell = instance_create(0, 0, obj_pacifyspell);
					_pspell.target = global.monsterinstance[star];
					_pspell.fail = 1;
					_pspell.flashcolor = c_yellow;
				}
			}
			global.spelldelay = 0;
			break;
		case 200:
			break;
		case 201:
			scr_healitemspell(40);
			item_use = true;
			break;
		case 202:
			reviveamt = ceil(global.maxhp[global.char[star]] / 2);
			if (global.hp[global.char[star]] <= 0)
				reviveamt = ceil(global.maxhp[global.char[star]]) + abs(global.hp[global.char[star]]);
			scr_healitemspell(reviveamt);
			item_use = true;
			break;
		case 203:
			break;
		case 204:
			break;
		case 205:
			scr_healitemspell(20);
			item_use = true;
			break;
		case 206:
			scr_healallitemspell(160);
			item_use = true;
			break;
		case 207:
			var healamount = (global.chapter == 1) ? 80 : 140;
			scr_healallitemspell(healamount);
			item_use = true;
			break;
		case 208:
			scr_healitemspell(70);
			item_use = true;
			break;
		case 209:
			scr_healitemspell(50);
			item_use = true;
			break;
		case 210:
			scr_healitemspell(4);
			item_use = true;
			break;
		case 211:
			scr_healallitemspell(70);
			item_use = true;
			break;
		case 212:
			if (global.char[star] == 1)
				scr_healitemspell(20);
			if (global.char[star] == 2)
				scr_healitemspell(80);
			if (global.char[star] == 3)
				scr_healitemspell(50);
			if (global.char[star] == 4)
				scr_healitemspell(30);
			item_use = true;
			break;
		case 213:
			if (global.char[star] == 1)
				scr_healitemspell(80);
			if (global.char[star] == 2)
				scr_healitemspell(20);
			if (global.char[star] == 3)
				scr_healitemspell(50);
			if (global.char[star] == 4)
				scr_healitemspell(70);
			item_use = true;
			break;
		case 214:
			scr_healitemspell(500);
			item_use = true;
			break;
		case 215:
			scr_healitemspell(50);
			item_use = true;
			break;
		case 216:
			scr_healitemspell(80);
			item_use = true;
			break;
		case 217:
			break;
		case 218:
			scr_healitemspell(scr_teaamount(1, global.char[star]));
			item_use = true;
			break;
		case 219:
			scr_healitemspell(scr_teaamount(4, global.char[star]));
			item_use = true;
			break;
		case 220:
			scr_healitemspell(scr_teaamount(3, global.char[star]));
			item_use = true;
			break;
		case 221:
			scr_healitemspell(scr_teaamount(2, global.char[star]));
			item_use = true;
			break;
		case 222:
			scr_healitemspell(60);
			item_use = true;
			break;
		case 223:
			scr_healitemspell(120);
			item_use = true;
			break;
		case 224:
			scr_healitemspell(100);
			item_use = true;
			break;
		case 225:
			scr_healallitemspell(30);
			item_use = true;
			break;
		case 226:
			var healamount = (global.char[star] == 1) ? 100 : 90;
			scr_healitemspell(healamount);
			item_use = true;
			break;
		case 227:
			break;
		case 228:
			break;
		case 229:
			break;
		case 230:
			var healamount = 10;
			for (var __j = 0; __j < 3; __j++)
			{
				if (global.char[__j] > 0)
				{
					healamount = 10;
					star = __j;
					if (global.hp[global.char[star]] <= 0)
						healamount = ceil(global.maxhp[global.char[star]] / 4) + abs(global.hp[global.char[star]]);
					scr_healitemspell(healamount);
				}
			}
			item_use = true;
			break;
		case 231:
			var healamount = 50;
			for (var __j = 0; __j < 3; __j++)
			{
				if (global.char[__j] > 0)
				{
					healamount = 50;
					star = __j;
					if (global.hp[global.char[star]] <= 0)
						healamount = 999;
					scr_healitemspell(healamount);
				}
			}
			item_use = true;
			break;
		case 232:
			if (i_ex(global.charinstance[star]))
				global.charinstance[star].poisonamount = 60;
			snd_play(snd_hurt1);
			var healanim = scr_healitemspell(40);
			healanim.particlecolor = c_fuchsia;
			item_use = true;
			break;
		case 233:
			break;
	}
	if (item_use == true)
	{
		with (obj_event_manager)
			trigger_event((0 << 0), get_consumer_trophy());
	}
}
