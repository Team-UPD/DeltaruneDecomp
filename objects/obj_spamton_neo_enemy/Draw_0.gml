if (partmode == 10)
	partmode = 9;
if (room != room_dw_mansion_b_east_a)
{
	if (!instance_exists(obj_sneo_phonecall) && obj_spamton_neo_enemy.image_alpha < 1)
		obj_spamton_neo_enemy.image_alpha += 0.1;
}
if (state == 0)
	fsiner++;
var hidebgvines = 0;
if (i_ex(obj_battlecontroller) && global.mercymod[myself] > 89)
	hidebgvines = 1;
var bgvinecount = 0;
for (var ii = 0; ii < 18; ii += 1)
{
	if (partvisible_back[ii] == 1)
		bgvinecount++;
	if (hidebgvines == 0)
	{
		if (partmode != 34)
			heartattackoffsetx = 0;
		draw_set_color(make_colour_rgb(0, 51, 0));
		partsiner_back[ii] += 0.5;
		if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 8.5)
			draw_set_alpha(image_alpha);
		if (partvisible_back[ii] == 1)
			draw_line_width(x + partx_back[ii] + partxoff_back[ii] + heartattackoffsetx + (sin(partsiner_back[ii] / 30) * 2), y + party_back[ii] + partyoff_back[ii], x + partx_back[ii] + heartattackoffsetx + partxoff_back[ii], -400, 1);
		draw_set_alpha(1);
		if (violentendflash > 0)
		{
			draw_set_color(c_white);
			draw_set_alpha(violentendflash / 10);
			if (partvisible_back[ii] == 1)
				draw_line_width(x + partx_back[ii] + partxoff_back[ii] + heartattackoffsetx + (sin(partsiner_back[ii] / 30) * 2), y + party_back[ii] + partyoff_back[ii], x + partx_back[ii] + heartattackoffsetx + partxoff_back[ii], -400, 1);
			draw_set_alpha(1);
		}
	}
}
if (weakentimer > 0)
{
	weakentimer++;
	if (weakenshakeamount > 0)
		weakenshakeamount -= 0.5;
}
if (lastwirecon == 0 || lastwirecon == 1)
{
	draw_set_color(make_colour_rgb(0, 51, 0));
	if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 8.5)
		draw_set_alpha(image_alpha);
	draw_line_width(x + partx[4] + (partxoff[4] / 1.2) + 20 + (sin(partsiner[4] / 25) * 1.8), ((y + party[4]) - 10) + partyoff[4], x + partx[4] + (partxoff[4] / 1.5) + 32, -400, 1);
	draw_set_alpha(1);
	if (violentendflash > 0)
	{
		draw_set_color(c_white);
		draw_set_alpha(violentendflash / 10);
		draw_line_width(x + partx[4] + (partxoff[4] / 1.2) + 20 + (sin(partsiner[4] / 25) * 1.8), ((y + party[4]) - 10) + partyoff[4], x + partx[4] + (partxoff[4] / 1.5) + 32, -400, 1);
		draw_set_alpha(1);
	}
}
if (endcon == 1 && lastwirecon == 0)
	lastwirecon = 1;
if (lastwirecon == 1)
{
	lastwiretimer++;
	if (lastwiretimer == 30)
		lastwirecon = 2;
}
if (lastwirecon == 1 || lastwirecon == 2)
{
	draw_set_alpha(lastwiretimer / 30);
	draw_set_color(c_green);
	draw_line_width(x + partx[4] + (partxoff[4] / 1.2) + 20 + (sin(partsiner[4] / 25) * 1.8), ((y + party[4]) - 10) + partyoff[4], x + partx[4] + (partxoff[4] / 1.5) + 32, -400, 1 + (lastwiretimer / 30));
	draw_set_alpha(1);
}
var fgvinecount = 0;
for (var i = 0; i < 6; i += 1)
{
	draw_set_color(c_green);
	var weakenshakeamount2 = 0;
	if (partweakened[i] == 1)
		weakenshakeamount2 = weakenshakeamount - (random(weakenshakeamount) * 2);
	if (partweakened[i] > 0)
		draw_set_color(c_orange);
	if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 8.5)
		draw_set_alpha(image_alpha);
	if (partvisible[i] == 1)
	{
		draw_line_width(x + partx[i] + (partxoff[i] / 1.2) + (i * 5) + (sin(partsiner[i] / 30) * 2) + weakenshakeamount2, ((y + party[i]) - 10) + partyoff[i] + weakenshakeamount2, x + partx[i] + (partxoff[i] / 1.5) + (i * 8), -400, 2);
		fgvinecount++;
	}
	draw_set_alpha(1);
	if (partweakened[i] == 1 && weakentimer < 11)
	{
		draw_set_color(c_white);
		draw_set_alpha(11 - (weakentimer / 10));
		if (instance_exists(obj_sneo_phonecall))
			draw_set_alpha(image_alpha);
		draw_line_width(x + partx[i] + (partxoff[i] / 1.2) + (i * 5) + (sin(partsiner[i] / 30) * 2) + weakenshakeamount2, ((y + party[i]) - 10) + partyoff[i] + weakenshakeamount2, x + partx[i] + (partxoff[i] / 1.5) + (i * 8), -400, 2);
		draw_set_alpha(1);
	}
	if (violentendflash > 0)
	{
		draw_set_color(c_white);
		draw_set_alpha(violentendflash / 10);
		if (instance_exists(obj_sneo_phonecall))
			draw_set_alpha(image_alpha);
		draw_line_width(x + partx[i] + (partxoff[i] / 1.2) + (i * 5) + (sin(partsiner[i] / 30) * 2) + weakenshakeamount2, ((y + party[i]) - 10) + partyoff[i] + weakenshakeamount2, x + partx[i] + (partxoff[i] / 1.5) + (i * 8), -400, 2);
		draw_set_alpha(1);
	}
	if (partweakened[i] == 1 && weakentimer == 10)
		partweakened[i] = 2;
}
if (i_ex(obj_battlecontroller) && global.mercymod[myself] > 89 && bgvinecount > 0 && !i_ex(obj_sneo_vine_transition) && !i_ex(obj_sneo_vine_cut))
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
if (specialcon == 1)
{
	specialcontimer++;
	for (var i = 0; i < 8; i += 1)
	{
		partrot[i] = lerp(partrot[i], 0, 0.07 * f);
		partx[i] = lerp(partx[i], 0, 0.05 * f);
		party[i] = lerp(party[i], 0, 0.03 * f);
	}
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.9)
		flamealpha = 0.9;
	if (specialcontimer >= 15)
	{
		flamealpha = 1 - (specialcontimer / 60);
		if (flamealpha < 0)
			flamealpha = 0;
	}
	if (specialcontimer >= 60)
	{
		specialcontimer = 12;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(spr_bhero, 10 + flameframe, x + 75, y + 177, -2, 2.8 + abs(sin(specialcontimer / 4) / 2), 0, c_blue, flamealpha);
	draw_sprite_ext(spr_bhero, 11 - flameframe, x + 75, y + 177, -2, 2.8, 0, c_teal, flamealpha / 1.4);
}
shocker -= (1 * f);
for (var i = 0; i < 8; i += 1)
{
	if (partmode < 20)
	{
		if (partmode == 0)
		{
			partsiner[i] = 0;
			partframe[i] = 0;
			if (i == 5)
			{
				partrot[i] = lerp(partrot[i], 30, 0.25 * f);
				partx[i] = lerp(partx[i], -10, 0.25 * f);
				party[i] = lerp(party[i], 10, 0.25 * f);
				if (dead == 1)
					partframe[i] = 3;
			}
			else
			{
				partrot[i] = lerp(partrot[i], 0, 0.25 * f);
				partx[i] = lerp(partx[i], 0, 0.25 * f);
				party[i] = lerp(party[i], 0, 0.25 * f);
				if (abs(partrot[i]) < 1)
					partrot[i] = 0;
				if (abs(partx[i]) < 1)
					partx[i] = 0;
				if (abs(party[i]) < 1)
					party[i] = 0;
			}
		}
		if (partmode == 1 || partmode == 3 || partmode >= 5)
		{
			if (partmode == 1 && aimmode != 0)
				aimmode = 0;
			if ((partmode == 3 || (partmode >= 9 && partmode <= 13)) && i == 1)
			{
				if (aimmode == 2 && instance_exists(obj_heart) && partmode == 3)
					armaim = point_direction(x + partxoff[i], y + partyoff[i], obj_heart.x + 8, obj_heart.y + 8) + 90;
				else if (aimmode != 1)
					armaim = -80;
				if (partmode < 10)
					partrot[i] = lerp(partrot[i], armaim, 0.25 * f);
				if (partmode < 9)
					partframe[i] = (partmode == 3) ? 1 : 3;
				if (partmode == 12)
					partframe[i] = 1;
				if (partmode >= 10)
				{
					if (partrot[i] == armaim)
						partrot[i] = armaim + 2;
					else
						partrot[i] = armaim;
				}
			}
			else if (partmode >= 6 && partmode < 11 && i == 1)
			{
				partrot[i] = lerp(partrot[i], -160, 0.25 * f);
				if (partframe[i] != 2 && partrot[i] <= -90)
					partframe[i] = 2;
			}
			else
			{
				if (i == 1)
				{
					if (partmode == 5 || partmode == 1)
						partframe[i] = 0;
				}
				partsiner[i] += (1 + (i / 5)) * f;
				partrot[i] = sin(partsiner[i] / 30) * 15;
			}
			if (i == 5)
			{
				partx[i] = lerp(partx[i], 0, 0.25 * f);
				party[i] = lerp(party[i], 0, 0.25 * f);
				partrot[i] -= 10 * f;
				if (partmode == 5 || partmode == 8 || partmode == 9)
				{
					partrot[i] /= 2;
					partrot[i] += 10 * f;
					partframe[i] = 1;
				}
				else if (partmode == 6 || partmode == 7)
				{
					partrot[i] /= 2;
					if (partmode > 6 || partrot[1] <= -120)
						partframe[i] = 0;
				}
				else if (partmode == 11)
				{
					partframe[i] += 0.2 * f;
				}
				else if (partmode == 12)
				{
					partframe[i] += 0.3 * f;
				}
				else
				{
					partframe[i] += 0.05 * f;
				}
				if (partframe[i] >= 3)
					partframe[i] = 0;
				if (partframe[i] >= 2)
					partrot[i] += 20 * f;
			}
		}
		if (partmode == 2)
		{
			partsiner[i] += (1 + (i / 5)) * f;
			partx[i] = sin((partsiner[i] / 2) * f);
			party[i] = cos((partsiner[i] / 2) * f);
			if (shocker < 0)
			{
				partrot[i] = 60 - random(120);
				if (i == 5)
				{
					partframe[i] += 1 * f;
					if (partframe[i] >= 3)
						partframe[i] = 0;
				}
			}
		}
		if (partmode == 4)
		{
			idealrot[0] = -43;
			idealrot[1] = -180;
			idealrot[2] = -20;
			idealrot[3] = -10;
			idealrot[4] = -31;
			idealrot[5] = -60;
			idealrot[6] = -61;
			idealrot[7] = -56;
			if (shotanimtimer == (0.125 * f) && i == 1)
			{
				armendx = x + partx[1] + partxoff[1] + lengthdir_x(armlength, partrot[1] - 93);
				armendy = y + party[1] + partyoff[1] + lengthdir_y(armlength, partrot[1] - 93);
				if (instance_exists(obj_sneo_heartattack))
					aimmode = 0;
			}
			shotanimtimer += (0.125 * f);
			if (shotanimtimer < 13)
			{
				partframe[5] = 2;
				partrot[i] = lerp(partrot[i], idealrot[i], 0.3 * f);
				lerper = 0;
			}
			if (shotanimtimer >= 13)
			{
				partframe[5] = 1;
				lerper += (0.015 * f);
				if (i != 1)
					partrot[i] = lerp(partrot[i], sin(partsiner[i] / 30) * 15, lerper);
				if (i == 1)
					partrot[i] = lerp(partrot[i], armaim, lerper);
			}
			if (shotanimtimer >= 24)
			{
				shotanimtimer = 0;
				partmode = 3;
			}
		}
		if (partmode == 6)
			shotanimtimer = 0;
		if (partmode == 7)
		{
			partrot[5] += sin(shotanimtimer / 5) * 15;
			shotanimtimer += (0.2 * f);
			if (shotanimtimer > 60)
				partmode = 6;
		}
		if (partmode == 20)
		{
			partrot[0] = -96 + random(3);
			partrot[1] = -143 + random(3);
			partrot[2] = -81 + random(3);
			partrot[3] = -1 + random(3);
			partrot[4] = -67 + random(3);
			partrot[5] = -45 + random(3);
			partframe[5] = 2;
			partrot[6] = 127 + random(3);
			partrot[7] = -43 + random(3);
		}
		if (i == 5)
		{
			if (partmode >= 15 && partmode <= 18)
			{
				if (partmode == 15)
				{
					partframe[5] = 2;
					headsize = lerp(headsize, 0.5, 0.25);
				}
				if (partmode == 16)
				{
					partframe[5] = 2;
					headsize = lerp(headsize, 1, 0.25);
				}
				if (partmode == 17)
				{
					partframe[5] = 2;
					headsize = lerp(headsize, 1.5, 0.25);
					partrot[5] += random(20);
				}
			}
			else
			{
				headsize = lerp(headsize, 0, 0.25);
			}
		}
	}
	if (partmode >= 21 && partmode <= 30)
	{
		if (partmode == 21 || partmode == 23 || partmode == 24 || partmode == 25)
		{
			partsiner[i] += 0.1;
			partx[i] = lerp(partx[i], 0, 0.5);
			party[i] = lerp(party[i], 0, 0.5);
			idealrot[i] = sin(partsiner[i] + (i / 8)) * 20;
			idealrot[1] = sin(partsiner[2]) * 60;
			idealrot[2] = sin(partsiner[2] - 0.1) * 60;
			idealrot[3] = -sin(partsiner[2] + 0.3) * 60;
			idealrot[6] = -sin(partsiner[2] + 0.1) * 60;
			partframe[5] = 1;
			partrot[i] = lerp(partrot[i], idealrot[i], 0.5);
			partrot[5] += 2;
			if (i == 5)
			{
				if (partmode == 23)
				{
					partframe[5] = 2;
					headsize = lerp(headsize, 0.5, 0.25);
				}
				if (partmode == 24)
				{
					partframe[5] = 2;
					headsize = lerp(headsize, 1, 0.25);
				}
				if (partmode == 25)
				{
					partframe[5] = 2;
					headsize = lerp(headsize, 1.5, 0.25);
					partrot[5] = -15;
					partx[i] = random(2);
					party[i] = random(2);
				}
			}
		}
		if (partmode == 22)
		{
			partframe[5] = 0;
			partrot[5] = sin(partsiner[0] / 2) * 4;
			partsiner[0] += 0.1;
			if (partsiner[0] >= 5)
			{
				partx[i] = random(2);
				party[i] = random(2);
				if (i == 8)
					partsiner[0] = 0;
			}
		}
		if (partmode == 27)
		{
			partframe[5] = 1;
			idealrot[i] = 0;
			idealrot[2] = 45;
			partframe[2] = 1;
			partrot[i] = lerp(partrot[i], idealrot[i], 0.5);
		}
	}
	if (partmode >= 30)
	{
		if (scr_debug())
		{
			if (keyboard_check_pressed(ord("D")) && i == 5)
				partmode++;
		}
		if (partmode == 30)
		{
			headsize = 0;
			if (scr_debug())
			{
				if (keyboard_check_pressed(ord("A")) && i == 5)
					shake_head = 1;
			}
			partsprite[5] = spr_sneo_head_preview;
			if (partframe[5] == 0)
				partframe[5] = 1;
			partsprite[0] = spr_nothing;
			partsiner[i] += 1;
			if (shake_head == 0)
			{
				party[i] = sin(partsiner[i] / 15) * 4;
				idealrot[i] = sin(partsiner[i] / 20) * 4;
			}
			else if (i == 5)
			{
				if (shake_head == 1)
				{
					partframe[5]++;
					snd_play(snd_swallow);
				}
				partrot[5] = (sin(shake_head * 2) * 8) + random(4);
				party[5] = random(4);
				partx[5] = random(4);
				shake_head++;
				if (shake_head >= 6)
				{
					shake_head = 0;
					partrot[5] = 0;
				}
			}
		}
		if (partmode == 31 && partmode < 34)
		{
			if (i == 5)
			{
				snd_play(snd_weaponpull_fast);
				var _n = 0;
				var eyeshine;
				repeat (5)
				{
					eyeshine = instance_create((_n * 8) + x + (partx[5] * facing) + (partxoff[5] * facing) + lastxoff, y + party[5] + partyoff[5], obj_afterimage_grow);
					eyeshine.sprite_index = spr_sneo_head_preview;
					eyeshine.image_index = 0;
					eyeshine.image_speed = 0;
					eyeshine.image_xscale = -2 - (_n / 5);
					eyeshine.image_yscale = 2 + (_n / 5);
					eyeshine.xrate = 0;
					eyeshine.yrate = 0;
					eyeshine.image_alpha = 1 + _n;
					_n += 0.2;
				}
				eyeshine.image_angle = partrot[5] * facing;
				eyeshine = scr_dark_marker(x + (partx[5] * facing) + (partxoff[5] * facing) + lastxoff, y + party[5] + partyoff[5], spr_sneo_head_preview);
				eyeshine.image_xscale = -2;
				partmode = 32;
			}
		}
		if (partmode == 33)
		{
			with (obj_marker)
			{
				if (sprite_index == spr_sneo_head_preview)
					instance_destroy();
			}
			partsprite[0] = spr_sneo_wingl;
			partsprite[1] = spr_sneo_arml;
			partsprite[2] = spr_sneo_legl;
			partsprite[3] = spr_sneo_legr;
			partsprite[4] = spr_sneo_body;
			partsprite[5] = spr_sneo_head;
			partsprite[6] = spr_sneo_armr;
			partsprite[7] = spr_sneo_wingr;
			partframe[5] = 0;
			partmode = 0;
			snd_play(snd_bump);
		}
	}
	if (partmode == 34)
	{
		hearttype = 0;
		if (obj_spamton_neo_enemy.difficulty == 1)
			hearttype = 1;
		if (obj_spamton_neo_enemy.difficulty == 2)
			hearttype = 2;
		if (obj_spamton_neo_enemy.difficulty == 3)
			hearttype = 3;
		if (obj_spamton_neo_enemy.difficulty == 4)
			hearttype = 4;
		var flyx = 0;
		if (heart_release_con == 1)
			flyx = -20;
		if (heart_release_con == 0)
			flyx = 0;
		if (i == 0)
		{
			siner++;
			if (heart_release_con >= 2)
				heart_release_con = 0;
			if (heart_release_con == 0)
			{
				idealx[0] = 0;
				idealx[1] = 0;
				idealx[2] = 0;
				idealx[3] = 0;
				idealx[4] = 0;
				idealx[5] = 0;
				idealx[6] = 0;
				idealx[7] = 0;
				idealrot[0] = 10;
				idealrot[1] = 30;
				idealrot[2] = -50;
				idealrot[3] = -50;
				idealrot[4] = 40;
				idealrot[5] = 60;
				idealrot[6] = -30;
				idealrot[7] = 30;
				if (hearttype > 2 && instance_number(obj_sneo_wireheart) < 3 && makehearttimer < 1 && global.turntimer > 100 && makeheartinit == 1)
				{
					makehearttimer = 80;
					makeheart = 1;
					makehearttype = choose(3, 4);
					if (makeheartalt != 0)
					{
						makehearttype = makeheartalt;
						makehearttimer = 120;
					}
				}
			}
			if (heart_release_con == 1)
			{
				idealx[0] = 4;
				idealx[1] = 0;
				idealx[2] = 0;
				idealx[3] = 0;
				idealx[4] = 0;
				idealx[5] = 15;
				idealx[6] = 0;
				idealx[7] = 4;
				idealrot[0] = -40;
				idealrot[1] = 90;
				idealrot[2] = 50;
				idealrot[3] = 50;
				idealrot[4] = -40;
				idealrot[5] = -100;
				idealrot[6] = 30;
				idealrot[7] = -30;
			}
			if (global.turntimer < 20)
			{
				idealx[0] = 0;
				idealx[1] = 0;
				idealx[2] = 0;
				idealx[3] = 0;
				idealx[4] = 0;
				idealx[5] = 0;
				idealx[6] = 0;
				idealx[7] = 0;
				idealrot[0] = 0;
				idealrot[1] = 0;
				idealrot[2] = 0;
				idealrot[3] = 0;
				idealrot[4] = 0;
				idealrot[5] = 0;
				idealrot[6] = 0;
				idealrot[7] = 0;
			}
			if (makehearttimer > 0)
				makehearttimer--;
			if (makeheart)
			{
				if (makeheartinit == 0)
				{
					makeheartinit = 1;
					makehearttype = 0;
				}
				if (hearttype == 0)
				{
					wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
					wireheart.boss = id;
					wireheart.bossx = x + 10;
					wireheart.bossy = y + 80;
					wireheart.type = 0;
					wireheart.target = 3;
					wireheart.special = hellmode;
					if (scr_sideb_get_phase() > 2)
					{
						wireheart.target = obj_sneo_bulletcontroller.target;
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
					}
					else
					{
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
					}
				}
				else if (hearttype == 1)
				{
					wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
					wireheart.boss = id;
					wireheart.bossx = x + 10;
					wireheart.bossy = y + 80;
					wireheart.type = 0;
					wireheart.target = 3;
					wireheart.special = hellmode;
					if (scr_sideb_get_phase() > 2)
					{
						wireheart.target = obj_sneo_bulletcontroller.target;
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
					}
					else
					{
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
					}
					wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
					wireheart.boss = id;
					wireheart.bossx = x + 10;
					wireheart.bossy = y + 80;
					wireheart.type = 1;
					wireheart.target = 3;
					if (scr_sideb_get_phase() > 2)
					{
						wireheart.target = obj_sneo_bulletcontroller.target;
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
					}
					else
					{
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
					}
					wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
					wireheart.boss = id;
					wireheart.bossx = x + 10;
					wireheart.bossy = y + 80;
					wireheart.type = 1;
					wireheart.target = 3;
					if (scr_sideb_get_phase() > 2)
					{
						wireheart.target = obj_sneo_bulletcontroller.target;
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
					}
					else
					{
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
					}
				}
				else if (hearttype == 2)
				{
					wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
					wireheart.boss = id;
					wireheart.bossx = x + 10;
					wireheart.bossy = y + 80;
					wireheart.type = 0;
					wireheart.bighearttype = 1;
					wireheart.target = 3;
					wireheart.special = hellmode;
					if (scr_sideb_get_phase() > 2)
					{
						wireheart.target = obj_sneo_bulletcontroller.target;
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
					}
					else
					{
						wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
					}
				}
				else if (hearttype == 3)
				{
					if (makehearttype == 0)
					{
						wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
						wireheart.boss = id;
						wireheart.bossx = x + 10;
						wireheart.bossy = y + 80;
						wireheart.type = 1;
						wireheart.target = 3;
						if (scr_sideb_get_phase() > 2)
						{
							wireheart.target = obj_sneo_bulletcontroller.target;
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
						}
						else
						{
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
						}
					}
					if (makehearttype == 0 || makehearttype == 3)
					{
						wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
						wireheart.boss = id;
						wireheart.bossx = x + 10;
						wireheart.bossy = y + 80;
						wireheart.type = 3;
						wireheart.target = 3;
						if (scr_sideb_get_phase() > 2)
						{
							wireheart.target = obj_sneo_bulletcontroller.target;
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
						}
						else
						{
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
						}
						wireheart.altbiter = 3;
					}
					if (makehearttype == 0 || makehearttype == 4)
					{
						wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
						wireheart.boss = id;
						wireheart.bossx = x + 10;
						wireheart.bossy = y + 80;
						wireheart.type = 3;
						wireheart.target = 3;
						if (scr_sideb_get_phase() > 2)
						{
							wireheart.target = obj_sneo_bulletcontroller.target;
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
						}
						else
						{
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
						}
						wireheart.altbiter = 4;
					}
				}
				else if (hearttype == 4)
				{
					if (makehearttype == 0)
					{
						wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
						wireheart.boss = id;
						wireheart.bossx = x + 10;
						wireheart.bossy = y + 80;
						wireheart.type = 1;
						wireheart.target = 3;
						if (scr_sideb_get_phase() > 2)
						{
							wireheart.target = obj_sneo_bulletcontroller.target;
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
						}
						else
						{
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
						}
					}
					if (makehearttype == 0 || makehearttype == 3)
					{
						wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
						wireheart.boss = id;
						wireheart.bossx = x + 10;
						wireheart.bossy = y + 80;
						wireheart.type = 4;
						wireheart.target = 3;
						if (scr_sideb_get_phase() > 2)
						{
							wireheart.target = obj_sneo_bulletcontroller.target;
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
						}
						else
						{
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
						}
					}
					if (makehearttype == 0 || makehearttype == 4)
					{
						wireheart = instance_create(x + 10, y + 80, obj_sneo_wireheart);
						wireheart.boss = id;
						wireheart.bossx = x + 10;
						wireheart.bossy = y + 80;
						wireheart.type = 4;
						wireheart.target = 3;
						if (scr_sideb_get_phase() > 2)
						{
							wireheart.target = obj_sneo_bulletcontroller.target;
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.8);
						}
						else
						{
							wireheart.damage = floor(global.monsterat[obj_spamton_neo_enemy.myself] * 5 * 0.6);
						}
					}
				}
				for (var _n = 0; _n < 6; _n++)
				{
					var shard = instance_create(x + 10, y + 80, obj_afterimage);
					shard.sprite_index = spr_bullet_laser_circle;
					shard.speed = 10 + random(2);
					shard.direction = 140 + random_range(-40, 40);
					shard.gravity = 1;
					shard.image_xscale = 0.5 + random(0.5);
					shard.image_yscale = shard.image_xscale;
				}
				makeheart = 0;
			}
		}
		if (global.turntimer < 20)
		{
			partrot[i] = lerp(partrot[i], 0, 0.14 * f);
			partx[i] = lerp(partx[i], 0, 0.1 * f);
			party[i] = lerp(0, party[i], 0.06 * f);
			heartattackoffsetx = lerp(heartattackoffsetx, 0, 0.06 * f);
			x = lerp(x, xstart, 0.1);
		}
		else
		{
			partrot[i] = lerp(partrot[i], idealrot[i] + random(4), 0.14 * f);
			partx[i] = lerp(partx[i] + flyx, idealx[i], 0.1 * f);
			party[i] = lerp(party[i], 0, 0.06 * f);
			if (heart_release_con == 0)
				heartattackoffsetx = lerp(heartattackoffsetx, -10, 0.01 * f);
			if (heart_release_con == 1)
				heartattackoffsetx = lerp(heartattackoffsetx, -60, 0.01 * f);
			x = lerp(x, xstart + 60, 0.1);
		}
	}
	if (partmode == 35)
	{
		var flyx = 0;
		if (dance_con == 1)
			flyx = 0;
		if (dance_con == 0)
			flyx = 0;
		if (i == 0)
		{
			siner += 1.3;
			dance_timer++;
			if (dance_timer > 9)
			{
				dance_timer = 0;
				dance_con++;
			}
			if (dance_con >= 2)
				dance_con = 0;
			if (dance_con == 0)
			{
				idealx[0] = 0;
				idealx[1] = 0;
				idealx[2] = 0;
				idealx[3] = 0;
				idealx[4] = 0;
				idealx[5] = 0;
				idealx[6] = 0;
				idealx[7] = 0;
				idealrot[0] = -20;
				idealrot[1] = -120;
				idealrot[2] = -30;
				idealrot[3] = 30;
				idealrot[4] = 0;
				idealrot[5] = 0;
				idealrot[6] = -230;
				idealrot[7] = 0;
			}
			if (dance_con == 1)
			{
				idealx[0] = 4;
				idealx[1] = 0;
				idealx[2] = 0;
				idealx[3] = 0;
				idealx[4] = 0;
				idealx[5] = 15;
				idealx[6] = 0;
				idealx[7] = 4;
				idealrot[0] = -20;
				idealrot[1] = -250;
				idealrot[2] = 30;
				idealrot[3] = -30;
				idealrot[4] = 0;
				idealrot[5] = 0;
				idealrot[6] = -120;
				idealrot[7] = -30;
			}
		}
		partrot[i] = lerp(partrot[i], idealrot[i] + random(4), 0.14 * f);
		partx[i] = lerp(partx[i] + flyx, idealx[i], 0.1 * f);
		party[i] = lerp(party[i], 0, 0.06 * f);
		if (i == 5)
		{
			partx[i] = lerp(partx[i], 0, 0.25 * f);
			party[i] = lerp(party[i], 0, 0.25 * f);
			partrot[i] -= 10 * f;
			if (partmode == 5)
			{
				partrot[i] /= 2;
				partrot[i] += 10 * f;
				partframe[i] = 1;
			}
			else if (partmode == 6)
			{
				partrot[i] /= 2;
				if (partmode > 6 || partrot[1] <= -120)
					partframe[i] = 0;
			}
			else if (partmode == 11)
			{
				partframe[i] += 0.2 * f;
			}
			else if (partmode == 12)
			{
				partframe[i] += 0.3 * f;
			}
			else
			{
				partframe[i] += 0.05 * f;
			}
			if (partframe[i] >= 3)
				partframe[i] = 0;
			if (partframe[i] >= 2)
				partrot[i] += 20 * f;
		}
		y = ystart + (sin(siner / 6) * 30);
		x = lerp(x, xstart + 60, 0.1);
	}
	if (partmode == 36)
	{
		var fastshot = 1;
		if (shootydanceinit == 0)
		{
			shootydanceinit = 1;
			shootydancex = x;
			shootydancey = y;
		}
		if (endcon > 0)
		{
			if (dancealtcon == 1)
				siner += 0.23;
			if (dancealtcon == 2)
				siner += 0.23;
			x = xstart + (sin(siner / 20) * 10);
			y = ystart + (sin(siner / 6) * 20);
		}
		else
		{
			x = shootydancex + (sin(siner / 20) * 10);
			y = shootydancey + (sin(siner / 6) * 20);
		}
		armendx = x + partx[1] + partxoff[1] + lengthdir_x(armlength, partrot[1] - 93);
		armendy = y + party[1] + partyoff[1] + lengthdir_y(armlength, partrot[1] - 93);
		if (dance_timer == 0)
		{
			if (i_ex(obj_heart))
				armangle = point_direction(partxoff[1], partyoff[1], obj_heart.x, obj_heart.y);
			idealrot[5] = -15;
		}
		if (i != 1 || endcon > 0)
		{
			partsiner[i] += 0.1;
			partx[i] = lerp(partx[i], 0, 0.5);
			party[i] = lerp(party[i], 0, 0.5);
			idealrot[i] = sin(partsiner[i] + (i / 8)) * 20;
			idealrot[1] = sin(partsiner[2]) * 60;
			idealrot[2] = sin(partsiner[2] - 0.1) * 60;
			idealrot[3] = -sin(partsiner[2] + 0.3) * 60;
			idealrot[6] = -sin(partsiner[2] + 0.1) * 60;
			partrot[5] = -15 - (abs(sin(head_recoil_amount / 60)) * 150);
			partframe[5] = 2;
			head_recoil_amount = lerp(head_recoil_amount, 0, 0.03);
			partrot[i] = lerp(partrot[i], idealrot[i], 0.5);
		}
		if (i == 0 && endcon == 0)
		{
			siner += 1.3;
			dance_timer++;
			if (dance_timer == (17 - (fastshot * 10)) || dance_timer == (52 - (fastshot * 10)))
			{
				d = instance_create(x, y, obj_sneo_biglaser);
				d.depth += 1;
				d._type = 1;
				chargeshot_sound = snd_loop(snd_chargeshot_charge);
				chargesfxtimer = 1;
			}
			if (dance_timer == (42 - (fastshot * 10)))
			{
				with (obj_sneo_biglaser)
					instance_destroy();
				shot = instance_create(armendx, armendy, obj_spamtonshot);
				shot.target = mytarget;
				shot.damage = damage;
				armaim += 360;
				head_recoil_amount = -170;
				snd_stop(chargeshot_sound);
				snd_play_x(snd_chargeshot_fire, 0.6, 0.5);
			}
			if (dance_timer == (84 - (fastshot * 20)))
			{
				with (obj_sneo_biglaser)
					instance_destroy();
				shot = instance_create(armendx, armendy, obj_spamtonshot);
				shot.target = mytarget;
				shot.damage = damage;
				armaim -= 360;
				head_recoil_amount = -170;
				snd_stop(chargeshot_sound);
				snd_play_x(snd_chargeshot_fire, 0.6, 0.5);
			}
			if (dance_timer == (85 - (fastshot * 20)))
				dance_timer = 3;
			if (chargesfxtimer == 1)
			{
				chargepitch = 0.1;
				snd_pitch(chargeshot_sound, chargepitch);
				snd_volume(chargeshot_sound, 0, 0);
				snd_volume(chargeshot_sound, 0.8, 20);
			}
			if (chargesfxtimer > 0 && chargesfxtimer <= 30)
			{
				chargesfxtimer++;
				chargepitch += 0.03;
				snd_pitch(chargeshot_sound, chargepitch);
			}
		}
		if (i == 1 && endcon == 0)
		{
			var shakebuster = 0;
			if (instance_exists(obj_sneo_biglaser))
				shakebuster = -4 + random(8);
			partrot[i] = lerp(partrot[i], armaim, 0.12) + shakebuster;
			partframe[i] = 1;
			with (obj_sneo_biglaser)
			{
				x = obj_spamton_neo_enemy.armendx;
				y = obj_spamton_neo_enemy.armendy;
			}
		}
	}
	if (partmode == 40)
	{
		if (i == 0 && dontchangepose == 0)
			shocktimer++;
		partsiner[i] += (1 + (i / 5)) * f;
		partx[i] = sin((partsiner[i] / 2) * f);
		party[i] = cos((partsiner[i] / 2) * f);
		if ((shockthreshold <= 5 && hurttimer2 == 0 && i == 0) || (smokethreshold > 1 && i == 0))
		{
			smoketimer++;
			if (smoketimer >= smokethreshold)
			{
				var smokey = instance_create(x + 50, y + 80, obj_afterimage_grow);
				smokey.visible = 0;
				with (smokey)
					scr_script_delayed(scr_var, 1, "visible", 1);
				smokey.depth = depth + 10;
				smokey.image_alpha = 2.5;
				smokey.sprite_index = spr_cakesmoke;
				smokey.hspeed = random_range(2, 8);
				smokey.gravity = -0.5;
				smokey.friction = 0.2;
				smokey.vspeed = random_range(-1, -2);
				smoketimer = 0;
			}
		}
		if (shockthreshold <= 8 && hurttimer2 == 0 && global.flag[8] == 0)
		{
			fsiner = partsiner[i] / 8;
			flash = 1;
		}
		if (global.flag[8] == 1)
			shockthreshold = clamp(shockthreshold, 5, 100);
		if (shocktimer >= shockthreshold)
		{
			partrot[i] = 60 - random(120);
			if (i == 4)
				partrot[i] = 40 - random(80);
			if (i == 5)
			{
				partframe[i] += 1 * f;
				if (partframe[i] >= 3)
					partframe[i] = 0;
			}
			if (i == 7)
				shocktimer = 0;
		}
	}
	if (i == 0)
	{
		if (keyboard_check_released(ord("O")) && scr_debug())
		{
			partmode = 43;
			y = ystart;
			fakegrav = 0;
			for (i = 0; i < 7; i++)
				partrot[i] = 0;
		}
	}
	if (partmode == 41)
	{
		if (i == 0)
			laughtimer++;
		if (i == 5)
		{
			if (laughtimer == 1)
				snd_play(snd_sneo_laugh_long);
			if (laughtimer >= 1 && laughtimer < 30)
			{
				headsize = 0;
				partframe[i] = 0;
				headsize = random(0.25);
				partrot[i] = 30 + random(10);
			}
			if (laughtimer >= 30 && laughtimer < 48)
			{
				partframe[i] = 1;
				headsize = random(0.25);
				partrot[i] = -40 + random(10);
			}
			if (laughtimer >= 48 && laughtimer < 60)
			{
				partframe[i] = 2;
				headsize = random(0.25);
				partrot[i] = 30;
			}
			if (laughtimer >= 60)
			{
				partframe[i] = 3;
				headsize = random(0.25);
				partrot[i] = -70 + random(10);
			}
			if (laughtimer >= 80)
				headsize = 0;
			if (partframe[i] >= 3)
				partframe[i] = 0;
		}
		partsiner[i] += (1 + (i / 5)) * f;
		partx[i] = sin((partsiner[i] / 2) * f);
		party[i] = cos((partsiner[i] / 2) * f);
		if (global.flag[8] == 1)
			shockthreshold = clamp(shockthreshold, 5, 100);
	}
	if (partmode == 42)
	{
		partsiner[i] = 0;
		partframe[i] = 0;
		partframe[5] = 7;
		if (i == 0)
		{
			var fallen = 0;
			if (y < (cameray() + 130))
			{
				fakegrav += 1;
				y += fakegrav;
			}
			else
			{
				fallen = 1;
			}
			if (fallen == 1)
			{
				if (y < (cameray() + 216))
				{
					partrot[2] = lerp(partrot[2], -90, 0.1);
					partrot[3] = lerp(partrot[3], 90, 0.1);
					partrot[5] = y - (cameray() + 120);
					if (y > ((cameray() + 216) - 30))
					{
						partrot[1] = lerp(partrot[1], -30, 0.1);
						partrot[6] = lerp(partrot[6], 30, 0.1);
					}
					y = lerp(y, cameray() + 216, 0.1);
				}
			}
			if (fallen == 0)
			{
				if (i == 5)
				{
					partrot[i] = lerp(partrot[i], 30, 0.25 * f);
					partx[i] = lerp(partx[i], -10, 0.25 * f);
					party[i] = lerp(party[i], 10, 0.25 * f);
					if (dead == 1)
						partframe[i] = 3;
				}
				else
				{
					partrot[i] = lerp(partrot[i], 0, 0.25 * f);
					partx[i] = lerp(partx[i], 0, 0.25 * f);
					party[i] = lerp(party[i], 0, 0.25 * f);
					if (abs(partrot[i]) < 1)
						partrot[i] = 0;
					if (abs(partx[i]) < 1)
						partx[i] = 0;
					if (abs(party[i]) < 1)
						party[i] = 0;
				}
			}
		}
	}
	if (partmode == 43 && i == 0)
	{
		var fallen = 0;
		falltimer++;
		if (y < (cameray() + 200))
		{
			fallshake = 10;
			fakegrav += (0.5 + (fakegrav / 10));
			fakegrav = clamp(fakegrav, 0, 16.5);
			y += fakegrav;
		}
		else
		{
			fallen = 1;
		}
		partframe[5] = 7;
		partrot[1] = -fakegrav * 6;
		partx[1] = fakegrav * 2;
		party[1] = fakegrav * 1.5;
		partrot[6] = -fakegrav * 6;
		partx[6] = fakegrav * 0.6;
		party[6] = fakegrav * 2;
		partrot[2] = -fakegrav * 6;
		partx[2] = -fakegrav * 1.6;
		party[2] = -fakegrav * 0.65;
		partrot[3] = -fakegrav * 6;
		partx[3] = -fakegrav * 2.5;
		party[3] = -fakegrav * 0.15;
		partrot[4] = -fakegrav * 6.25;
		partx[4] = fakegrav * 2;
		party[4] = fakegrav / 1.5;
		partrot[5] = -fakegrav * 8;
		partx[5] = fakegrav * 1.8;
		party[5] = fakegrav * 2;
		partrot[0] = -fakegrav * 4;
		party[0] = fakegrav * 3;
		partrot[7] = -fakegrav * 4;
		party[7] = fakegrav * 3;
		if (fallen != 0)
		{
			if (fallshake == 10)
				snd_play(snd_closet_impact);
			for (var ii = 0; ii < 7; ii++)
			{
				party[ii] += random_range(-fallshake, fallshake);
				partx[ii] += random_range(-fallshake, fallshake);
			}
			if (fallshake > 0)
				fallshake--;
		}
	}
	scalebonus = 0;
	if (i == 5)
		scalebonus = headsize;
	if (shadow_amount >= 0)
		partblend[i] = merge_color(c_white, c_black, shadow_amount);
	if (facing == -1)
		lastxoff = 110;
	else
		lastxoff = 0;
	if (instance_exists(obj_dbulletcontroller))
	{
		partframe[5] = 3;
		partblend[5] = blend;
	}
	else if (partblend[5] == blend)
	{
		partblend[5] = 16777215;
	}
	var shakevar = 0;
	if (i == 0)
	{
		if (hurttimer2 > 0)
			hurttimer2--;
		if (hurttimer2 == 1)
		{
			if (endcon == 0)
			{
				shockthreshold = 10;
				partmode = 1;
			}
			if ((didwejustdie == 0 && i_ex(obj_battlecontroller) && global.monsterhp[global.chartarget[myself]] <= 0) || (didwejustdie == 0 && i_ex(obj_battlecontroller) && global.monsterhp[myself] <= (global.monstermaxhp[myself] * 0.1) && scr_sideb_get_phase() > 2 && weirdpathendcon == 0))
			{
				partmode = 99;
				dontchangepose = 1;
			}
		}
	}
	if (hurttimer2 > 0)
		shakevar = (random(hurttimer2) / 2) - (hurttimer2 / 4);
	if (headendcon == 1)
	{
		partrot[5] = -37 + sin(partsiner[4] / 16);
		partframe[5] = 1;
		partsprite[5] = spr_sneo_head;
	}
	if (headendcon == 2)
	{
		partrot[5] = 15 + sin(partsiner[4] / 16);
		partsprite[5] = spr_sneo_head_sad;
	}
	if (headendcon == 3)
		partsprite[5] = spr_sneo_head;
	if (instance_exists(obj_pipis_destroy_fx) && i == 5)
		partrot[5] -= random(60);
	if (headforceframe != -1 && i == 5)
		partframe[5] = headforceframe;
	if (funnycheat > 5)
	{
		if (funnycheattimer < 28)
			funnycheattimer += 0.125;
		partblend[5] = merge_color(c_white, c_red, funnycheattimer / 30);
		if (funnycheattimer == 24)
		{
			snd_play(snd_carhonk);
			funnycheattimer3++;
		}
		if (funnycheattimer3 > 0 && funnycheattimer3 < 33 && i == 5)
		{
			funnycheattimer3++;
			if (funnycheattimer3 > 0 && funnycheattimer3 < 6)
				headexpand = lerp(headexpand, 2, funnycheattimer3 / 6);
			if (funnycheattimer3 >= 8 && funnycheattimer3 < 16)
				headexpand = lerp(headexpand, 0, (funnycheattimer3 - 8) / 8);
			if (funnycheattimer3 >= 16 && funnycheattimer3 < 22)
				headexpand = lerp(headexpand, 2, (funnycheattimer3 - 16) / 6);
			if (funnycheattimer3 >= 24 && funnycheattimer3 < 32)
				headexpand = lerp(headexpand, 0, (funnycheattimer3 - 24) / 8);
			if ((funnycheattimer3 >= 4 && funnycheattimer3 <= 10) || (funnycheattimer3 >= 20 && funnycheattimer3 <= 26))
				shakevar = -12 + random(24);
		}
		funnycheattimer2++;
		if (funnycheattimer2 >= 10 && image_alpha > 0.6)
		{
			var smokey = instance_create(x + 50, y + 80, obj_afterimage_grow);
			smokey.visible = 0;
			with (smokey)
				scr_script_delayed(scr_var, 1, "visible", 1);
			smokey.depth = depth + 10;
			smokey.image_alpha = 2.5;
			smokey.sprite_index = spr_cakesmoke;
			smokey.hspeed = random_range(2, 8);
			smokey.gravity = -0.5;
			smokey.friction = 0.2;
			smokey.vspeed = random_range(-1, -2);
			funnycheattimer2 = 0;
		}
	}
	var expand = 0;
	if (i == 5)
		expand = headexpand;
	draw_monster_body_part_ext(partsprite[i], partframe[i], x + (partx[i] * facing) + (partxoff[i] * facing) + lastxoff + shakevar, (y + party[i] + partyoff[i]) - shakevar, ((2 + scalebonus) * facing) + expand, 2 + scalebonus + expand, partrot[i] * facing, partblend[i], image_alpha);
	if (violentendflash > 0)
	{
		d3d_set_fog(true, c_white, 0, 1);
		draw_monster_body_part_ext(partsprite[i], partframe[i], x + (partx[i] * facing) + (partxoff[i] * facing) + lastxoff + shakevar, (y + party[i] + partyoff[i]) - shakevar, (2 + scalebonus) * facing, 2 + scalebonus, partrot[i] * facing, partblend[i], violentendflash / 10);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (shocker < 0)
{
	shocker = shocker_threshold;
	if (shocker_threshold > 2)
		shocker_threshold -= (0.25 * f);
}
if (partmode == 13)
{
	partframe[1] = 1;
	armendx = x + (partx[1] * facing) + (partxoff[1] * facing) + (lengthdir_x(armlength, partrot[1] - 93) * facing) + 15;
	armendy = y + party[1] + partyoff[1] + lengthdir_y(armlength, partrot[1] - 93);
	partframe[5] = (partsiner[5] / 6) % 3;
	draw_set_color(c_white);
	draw_circle(armendx + 120, armendy + 6, 13 + (sin(partrot[0] / 2) * 12), false);
}
draw_set_color(c_red);
headx = x + partx[5] + partxoff[5];
heady = y + party[5] + partyoff[5];
hitdetector.x = headx;
hitdetector.y = heady;
hitdetector.image_angle = partrot[5];
hitdetector.image_index = partframe[5];
if (hitcon == 1 || hitcon == -1)
{
	partblend[5] = 4235519;
	hitcontimer = 0;
	if (headhit < 20)
		headhit += 6;
	hitcon = 2;
}
if (hitcon == 2)
{
	hitcontimer += (1 * f);
	if (hitcontimer >= 5)
		partblend[5] = merge_color(partblend[5], c_white, 0.15 * f);
	if (hitcontimer >= 15)
	{
		hitcontimer = 0;
		hitcon = 0;
		partblend[5] = 16777215;
	}
}
if (scr_debug())
{
}
if (violentendflash > 0)
	violentendflash++;
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
