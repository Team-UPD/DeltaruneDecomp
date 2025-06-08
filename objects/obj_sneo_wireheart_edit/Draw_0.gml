if (i_ex(boss))
{
	var xx = 50 - (boss.heart_release_con * 100);
	if (global.turntimer < 20)
		xx = 0;
	rembossx = lerp(rembossx, boss.x + xx, 0.16);
	rembossy = boss.y + 80;
}
if (destroyed == 1)
	invincibility_timer = 0;
var hidesprite = 0;
if (invincibility_timer > 0)
{
	if (invincibility_timer == 10 || invincibility_timer == 9 || invincibility_timer == 6 || invincibility_timer == 5 || invincibility_timer == 3 || invincibility_timer == 2)
		hidesprite = 1;
	invincibility_timer--;
}
if (hidesprite == 0)
{
	if (type == 3 && altbiter > 0 && altbiter < 3)
	{
		if (altbiter == 1)
		{
			for (i = 6; i >= 0; i--)
				draw_sprite_ext(spr_sneo_wireheart, 5, lerp(x, rembossx, i / 5), lerp(y, rembossy, i / hpos), 0.75, 0.75, 0, image_blend, image_alpha);
		}
		else
		{
			for (i = 6; i >= 0; i--)
				draw_sprite_ext(spr_sneo_wireheart, 5, lerp(x, rembossx, i / 6), lerp(y, rembossy, i / hpos), 0.75, 0.75, 0, image_blend, image_alpha);
		}
	}
	else
	{
		for (i = 10; i >= 0; i--)
			draw_sprite_ext(spr_sneo_wireheart, 4, lerp(x, rembossx, i / 9), lerp(y, rembossy, i / 9), image_xscale, image_yscale, 0, image_blend, image_alpha);
	}
	animtimer++;
	firedtimer--;
	image_index = 0;
	if (animtimer >= 5)
		image_index = 1;
	if (animtimer >= 10)
		animtimer = 0;
	if (firedtimer > 4)
		image_index = 3;
	draw_self();
	if (damagetimer > 0)
	{
		draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, image_angle, image_blend, damagetimer / 5);
		damagetimer -= 1;
	}
}
if (destroyed == 1)
{
	snd_play(snd_bomb);
	if (type == 4 && global.turntimer > 20)
	{
		bomb = instance_create(x, y, obj_sneo_heart_bomb_explode);
		bomb.depth = depth - 2;
	}
	else
	{
		scr_afterimage_cut();
	}
	for (i = 10; i >= 0; i--)
	{
		piece = scr_marker(lerp(x, rembossx, i / 9), lerp(y, rembossy, i / 9), spr_sneo_wireheart);
		piece.image_index = 4;
		piece.i = i;
		piece.depth = depth + 1;
		with (piece)
		{
			scr_script_delayed(scr_afterimage_cut, i * 2);
			scr_script_delayed(snd_play, i * 2, snd_bomb);
			scr_script_delayed(snd_volume, i * 2, 142, 0.5, 0);
			scr_doom(id, (i * 2) + 1);
		}
	}
	if (altbiter == 1 || altbiter == 2)
		obj_spamton_neo_enemy.makeheartalt = altbiter + 2;
	if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2))
	{
		with (obj_spamton_neo_enemy)
		{
			if (global.monsterhp[myself] == global.monstermaxhp[myself] && scr_sideb_get_phase() < 3)
			{
				obj_sneo_bulletcontroller.mercyaccumulated += 3;
				with (obj_spamton_neo_enemy)
				{
					__mercydmgwriter = instance_create(global.monsterx[myself], (global.monstery[myself] + 20) - (global.hittarget[myself] * 20), obj_dmgwriter);
					__mercydmgwriter.damage = 3;
					__mercydmgwriter.type = 5;
					global.hittarget[myself]++;
				}
			}
			else
			{
				global.monsterhp[0] -= ceil(global.monstermaxhp[0] * 0.03);
				if (global.monsterhp[0] < 0)
					global.monsterhp[0] = 1;
			}
		}
	}
	instance_destroy();
}
