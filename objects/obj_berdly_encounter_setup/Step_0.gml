if (fightcon == 2)
{
	counttimer += 1;
	if (counttimer == 1)
	{
		instance_create(x, y, o_berdly_hide_intro_markers);
		global.specialbattle = 3;
		global.encounterno = 58;
		encounterflag = 529;
		global.flag[54] = encounterflag;
		scr_encountersetup(global.encounterno);
		if (global.flag[9] != 2)
		{
			global.flag[9] = 1;
			global.batmusic[0] = snd_init("berdly_chase.ogg");
		}
		global.interact = 2;
		if (global.flag[9] == 1)
			snd_volume(global.currentsong[1], 0, 20);
		with (obj_mainchara)
			visible = 0;
		with (global.cinstance[0])
			visible = 0;
		with (global.cinstance[1])
			visible = 0;
		with (obj_mainchara)
			fun = 0;
		with (obj_caterpillarchara)
			fun = 0;
		wp = snd_play(snd_impact);
		snd_volume(wp, 0.7, 0);
		wp2 = snd_play(snd_weaponpull_fast);
		snd_volume(wp2, 0.8, 0);
		with (obj_ch2_scene11a)
		{
			with (coaster_kris)
			{
				stop_siner = 1;
				con = 1;
				character_sprite = spr_krisb_attack;
				actor.sprite_index = spr_krisb_attack;
			}
			with (coaster_susie)
			{
				stop_siner = 1;
				con = 1;
				character_sprite = spr_susieb_attack;
				actor.sprite_index = spr_susieb_attack;
				if (global.charweapon[global.char[2]] == 0)
					character_sprite = spr_susieb_attack_unarmed;
			}
			with (coaster_ralsei)
			{
				stop_siner = 1;
				con = 1;
				character_sprite = spr_ralsei_battleintro;
				actor.sprite_index = spr_ralsei_battleintro;
			}
			with (coaster_berdly)
				stop_siner = 1;
		}
	}
	if (counttimer >= 20)
	{
		counttimer = 0;
		fightcon = 3;
		instance_create(0, 0, obj_battlecontroller);
		with (obj_heroparent)
			visible = false;
		instance_destroy();
	}
}
