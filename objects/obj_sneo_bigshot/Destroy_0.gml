d = instance_create(camerax(), cameray(), obj_fadein);
with (obj_fadeout)
	instance_destroy();
d.image_blend = c_white;
d.fadespeed = -0.034;
global.turntimer = 1;
with (obj_sneo_lastattack)
	instance_destroy();
with (obj_sneo_lastattack_hitbox)
	instance_destroy();
if (sprite_index == spr_sneo_bigshot_l)
{
	with (obj_spamton_neo_enemy)
	{
		if (global.monsterhp[myself] == global.monstermaxhp[myself] && scr_sideb_get_phase() < 3)
		{
			obj_sneo_bulletcontroller.mercyaccumulated += 5;
			with (obj_spamton_neo_enemy)
			{
				__mercydmgwriter = instance_create(global.monsterx[myself], (global.monstery[myself] + 20) - (global.hittarget[myself] * 20), obj_dmgwriter);
				__mercydmgwriter.damage = 5;
				__mercydmgwriter.type = 5;
				global.hittarget[myself]++;
			}
		}
		else
		{
			global.monsterhp[0] -= ceil(global.monstermaxhp[0] * 0.05);
			if (global.monsterhp[0] < 0)
				global.monsterhp[0] = 1;
		}
	}
}
