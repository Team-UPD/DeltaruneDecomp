if (state == 3)
{
	if (hurttimer > 0)
	{
		hurttimer = 0;
		body.condition = 1;
		body.siner = 0;
		body.maxdist += 20 + (hurtamt / 5);
		if (body.maxdist < 30)
			body.maxdist = 30;
		mhpratio = global.monsterhp[myself] / global.monstermaxhp[myself];
		body.floatsinerspeed = 1 + (1 - mhpratio);
		if (mhpratio <= 0.8 && body.dancelv == 0)
			body.dancelv = 1;
		if (mhpratio <= 0.4 && jturn < 17)
			body.dancelv = 3;
		if (mhpratio <= 0.2 && jturn == 17)
			body.dancelv = 2;
		if (mhpratio <= 0)
		{
			event_user(10);
			global.flag[241] = 6;
		}
		if (instance_exists(obj_jokerbg_triangle_real))
		{
			if (mhpratio > 0)
				obj_jokerbg_triangle_real.rotspeed = 1 + (1.5 - (mhpratio * 1.5));
		}
		laughnoise = choose(0, 1, 2);
		if (laughnoise == 0)
			snd_play(snd_joker_laugh0);
		if (laughnoise == 1)
			snd_play(snd_joker_ha1);
		if (laughnoise == 2)
			snd_play(snd_joker_ha0);
	}
	hurttimer -= 1;
	if (hurttimer < 0)
	{
		state = 0;
	}
	else if (global.monster[myself] == 0)
	{
	}
}
if (state == 0)
{
	siner += 1;
	thissprite = idlesprite;
	if (flash == 1)
	{
		fsiner += 1;
		body.fsiner = fsiner;
		with (body)
		{
			d3d_set_fog(true, c_white, 0, 1);
			if (dancelv == 0)
				draw_sprite_ext(spr_joker_main, 0, offx + flyx, offy + fly, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
			if (dancelv == 1)
				draw_sprite_ext(spr_joker_dance, floatsiner / 3, offx + flyx, offy + fly, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
			if (dancelv == 2)
				draw_sprite_ext(spr_joker_tired, 0, offx + flyx, offy + fly, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
			d3d_set_fog(false, c_black, 0, 0);
		}
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
