if (obj_spamton_neo_enemy.singleshotmercy > 9)
{
	with (obj_spamton_neo_enemy)
	{
		if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 1.5)
		{
			obj_sneo_bulletcontroller.mercyaccumulated += 1;
			__mercydmgwriter = instance_create(global.monsterx[myself], (global.monstery[myself] + 20) - (global.hittarget[myself] * 20), obj_dmgwriter);
			__mercydmgwriter.damage = 1;
			__mercydmgwriter.type = 5;
			global.hittarget[myself]++;
		}
		else
		{
			scr_mercyadd(myself, 1);
		}
		singleshotmercy = 0;
	}
}
if (!instance_exists(obj_sneo_bulletcontroller))
{
	idealx[5] = 0;
	idealrot[5] = 0;
	partsiner[5] = 0;
	partrot[5] = 0;
	partx[5] = 0;
	party[5] = 0;
	partxoff[5] = sprite_get_xoffset(partsprite[5]) * 2;
	partyoff[5] = sprite_get_yoffset(partsprite[5]) * 2;
}
if (global.fighting == 1)
{
	if (prevmercy != global.mercymod[myself])
	{
		var mercygainedthisturn = global.mercymod[myself] - prevmercy;
		repeat (mercygainedthisturn)
		{
			prevmercy++;
			if ((prevmercy % 2) == 0)
			{
				var i = irandom(5);
				var a = -1;
				var maxv = 0;
				repeat (6)
				{
					if (partvisible[i] == 1 && partweakened[i] > 0)
					{
						a = i;
						break;
					}
					i++;
					if (i > 5)
						i = 0;
					if (partvisible[i] == 1)
						maxv++;
				}
				if (vinebgcount < 1)
					maxvinecount = maxv;
				var multicut = 1;
				var c = irandom(5);
				var d = 0;
				var maxvines = 0;
				while (d == 0)
				{
					if (x == x)
					{
						if (partvisible[c] == 1)
						{
							partvisible[c] = 0;
							vine = instance_create(x, y, obj_sneo_vine_cut);
							vine.x1 = x + partx[c] + (partxoff[c] / 1.2) + (c * 5) + (sin(partsiner[c] / 30) * 2);
							vine.x2 = x + partx[c] + (partxoff[c] / 1.5) + (c * 8);
							vine.y1 = ((y + party[c]) - 10) + partyoff[c];
							vine.y2 = -400;
							vine.depth = depth + 1;
							vine.vineid = c;
							vfx = instance_create(x + partx[c] + (partxoff[c] / 1.2) + (c * 5), y - 20, obj_sneo_vine_weak);
							vfx.depth = depth - 5;
							if (!audio_is_playing(snd_damage))
								snd_play(snd_damage);
							c = irandom(5);
							maxvines++;
							a--;
							if (maxvines >= multicut)
								d = 1;
							obj_spamton_neo_enemy.vinebgcount -= 1;
						}
						else
						{
							c++;
							if (c > 5)
								c = 0;
						}
					}
					else if (partweakened[c] == 0)
					{
						partweakened[c] = 1;
						vfx = instance_create(x + partx[c] + (partxoff[c] / 1.2) + (c * 5), y - 20, obj_sneo_vine_weak);
						vfx.depth = depth - 5;
						if (!audio_is_playing(snd_damage))
							snd_play(snd_damage);
						c = irandom(5);
						maxvines++;
						a++;
						if (maxvines >= multicut)
							d = 1;
					}
					else
					{
						c++;
						if (c > 5)
							c = 0;
					}
					var max_break = 0;
					i = 0;
					repeat (6)
					{
						if (partvisible[i] == 1)
							max_break = 1;
						i++;
					}
					if (max_break == 0)
						d = 1;
				}
			}
		}
		if (obj_spamton_neo_enemy.vinebgcount > -2 && !instance_exists(obj_sneo_throwkris_vine_controller))
		{
			for (var i = 0; i < 6; i += 1)
			{
				if (obj_spamton_neo_enemy.partvisible[i] == 0)
				{
					obj_spamton_neo_enemy.vineid = i;
					vine = instance_create(x, y, obj_sneo_vine_transition);
				}
			}
		}
		weakentimer = 1;
		weakenshakeamount = 10;
	}
}
if (global.fighting == 1)
	prevmercy = global.mercymod[myself];
