if (instance_exists(obj_thrash_intro) || instance_exists(obj_thrash_transformation_transition))
	exit;
if (jumping == 1)
{
	draw_set_color(c_black);
	ht = (basey - y) / 8;
	draw_ellipse(basex - 62 - (ht * 2), basey - 40 - (ht / 2), basex + 38 + (ht * 2), basey + (ht / 2), false);
}
var sword_slash = 0;
if ((image_index == 12 && swordactive == 1) || (image_index == 13 && swordactive == 1) || (image_index == 14 && swordactive == 1))
	sword_slash = 1;
if (wireframe_boxing == 0 && dead > 0)
{
	drawflip = 0;
	image_index = 7;
}
if (drawflip == 0)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
	if (sword_slash == 0 && wireframe_boxing == 0)
	{
		draw_set_blend_mode(bm_normal);
		draw_sprite_ext_glow(headsprite, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha, c_white);
		draw_set_blend_mode(bm_add);
		draw_sprite_ext_glow(headsprite, image_index, x, y, image_xscale, image_yscale, 0, headcolor, image_alpha, c_white);
		draw_set_blend_mode(bm_normal);
	}
	if (laserpunchfadetimer > 0)
	{
		laserpunchfadetimer--;
		d3d_set_fog(1, c_white, 0, 0);
		if (sword_slash == 0 && wireframe_boxing == 0)
			draw_sprite_ext(headsprite, image_index, x, y, image_xscale, image_yscale, 0, image_blend, laserpunchfadetimer / 10);
		d3d_set_fog(0, c_white, 0, 0);
	}
	if (color_fade_alpha > 0)
	{
		c_extra = make_colour_rgb(255, 90, 195);
		color_fade_alpha -= 0.1;
		d3d_set_fog(1, c_extra, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, color_fade_alpha);
		if (sword_slash == 0 && wireframe_boxing == 0)
			draw_sprite_ext(headsprite, image_index, x, y, image_xscale, image_yscale, 0, image_blend, color_fade_alpha);
		d3d_set_fog(0, c_extra, 0, 0);
	}
	if (turboactive > 0)
	{
		if (turbo_fade_state == 0)
			turbo_fade_alpha += 0.04;
		if (turbo_fade_state == 1)
			turbo_fade_alpha -= 0.04;
		if (turbo_fade_alpha > 0.3)
			turbo_fade_state = 1;
		if (turbo_fade_alpha < 0)
			turbo_fade_state = 0;
		d3d_set_fog(1, c_white, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, turbo_fade_alpha);
		if (sword_slash == 0 && wireframe_boxing == 0)
		{
			if (draw_sprite_ext(headsprite, image_index, x, y, image_xscale, image_yscale, 0, image_blend, turbo_fade_alpha))
				d3d_set_fog(0, c_white, 0, 0);
		}
	}
	if (swordactive > 0)
	{
		if (sword_fade_state == 0)
			sword_fade_alpha += 0.08;
		if (sword_fade_state == 1)
			sword_fade_alpha -= 0.08;
		if (sword_fade_alpha > 0.6)
			sword_fade_state = 1;
		if (sword_fade_alpha < 0)
			sword_fade_state = 0;
		d3d_set_fog(1, c_white, 0, 0);
		if (sword_slash == 0 && wireframe_boxing == 0)
			draw_sprite_ext(headsprite, image_index, x, y, image_xscale, image_yscale, 0, image_blend, sword_fade_alpha);
		d3d_set_fog(0, c_white, 0, 0);
	}
}
else
{
	draw_sprite_ext(sprite_index, image_index, x, y, -image_xscale, image_yscale, 0, image_blend, image_alpha);
	if (sword_slash == 0 && wireframe_boxing == 0)
	{
		draw_set_blend_mode(bm_normal);
		draw_sprite_ext_glow(headsprite, image_index, x, y, -image_xscale, image_yscale, 0, c_white, image_alpha, c_white);
		draw_set_blend_mode(bm_add);
		draw_sprite_ext_glow(headsprite, image_index, x, y, -image_xscale, image_yscale, 0, headcolor, image_alpha, c_white);
		draw_set_blend_mode(bm_normal);
	}
	if (color_fade_alpha > 0)
	{
		c_extra = make_colour_rgb(255, 90, 195);
		color_fade_alpha -= 0.1;
		d3d_set_fog(1, c_extra, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, -image_xscale, image_yscale, 0, image_blend, color_fade_alpha);
		if (sword_slash == 0 && wireframe_boxing == 0)
			draw_sprite_ext(headsprite, image_index, x, y, -image_xscale, image_yscale, 0, image_blend, color_fade_alpha);
		d3d_set_fog(0, c_extra, 0, 0);
	}
	if (turboactive > 0)
	{
		if (turbo_fade_state == 0)
			turbo_fade_alpha += 0.04;
		if (turbo_fade_state == 1)
			turbo_fade_alpha -= 0.04;
		if (turbo_fade_alpha > 0.3)
			turbo_fade_state = 1;
		if (turbo_fade_alpha < 0)
			turbo_fade_state = 0;
		d3d_set_fog(1, c_white, 0, 0);
		draw_sprite_ext(sprite_index, image_index, x, y, -image_xscale, image_yscale, 0, image_blend, turbo_fade_alpha);
		if (sword_slash == 0 && wireframe_boxing == 0)
			draw_sprite_ext(headsprite, image_index, x, y, -image_xscale, image_yscale, 0, image_blend, turbo_fade_alpha);
		d3d_set_fog(0, c_white, 0, 0);
	}
	if (swordactive > 0)
	{
		if (sword_fade_state == 0)
			sword_fade_alpha += 0.08;
		if (sword_fade_state == 1)
			sword_fade_alpha -= 0.08;
		if (sword_fade_alpha > 0.6)
			sword_fade_state = 1;
		if (sword_fade_alpha < 0)
			sword_fade_state = 0;
		d3d_set_fog(1, c_white, 0, 0);
		if (sword_slash == 0 && wireframe_boxing == 0)
			draw_sprite_ext(headsprite, image_index, x, y, -image_xscale, image_yscale, 0, image_blend, sword_fade_alpha);
		d3d_set_fog(0, c_white, 0, 0);
	}
}
if (specialcon == 1 && wireframe_boxing == 0)
{
	flameactive = 1;
	damage_multiplier = 1.5;
	if (specialcontimer == 0)
	{
		special_punch_count = 16;
		special_punch_turns = 3;
	}
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
	{
		flameactive = 1;
		flamealpha = 1 - (specialcontimer / 30);
	}
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(sprite_index, 9 + flameframe, x, y, -image_xscale, image_yscale + abs(sin(specialcontimer / 4) / 2), 0, c_red, flamealpha);
	draw_sprite_ext(sprite_index, 10 - flameframe, x, y, -image_xscale, image_yscale, 0, c_yellow, flamealpha / 2);
}
if (specialcon == 2 && wireframe_boxing == 0)
{
	swordactive = 1;
	damage_multiplier = 1.2;
	if (specialcontimer == 0)
	{
		special_punch_count = 16;
		special_punch_turns = 3;
		if (!instance_exists(obj_rotating_sprites_controller))
		{
			instance_create(x, y, obj_rotating_sprites_controller);
			with (obj_rotating_sprite)
				sprite_index = spr_rotating_sprite1;
		}
	}
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
	{
		swordactive = 1;
		flamealpha = 1 - (specialcontimer / 30);
	}
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(sprite_index, 9 + flameframe, x, y, -image_xscale, image_yscale + abs(sin(specialcontimer / 4) / 2), 0, c_blue, flamealpha);
	draw_sprite_ext(sprite_index, 10 - flameframe, x, y, -image_xscale, image_yscale, 0, c_teal, flamealpha / 2);
}
if (specialcon == 3 && wireframe_boxing == 0)
{
	laseractive = 1;
	damage_multiplier = 1.1;
	punch_speed_multiplier = 1.3;
	if (specialcontimer == 0)
	{
		special_punch_count = 32;
		special_punch_turns = 3;
		if (!instance_exists(obj_rotating_sprites_controller))
		{
			instance_create(x, y, obj_rotating_sprites_controller);
			with (obj_rotating_sprite)
				sprite_index = spr_rotating_sprite2;
		}
	}
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
	{
		laseractive = 1;
		flamealpha = 1 - (specialcontimer / 30);
	}
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(sprite_index, 9 + flameframe, x, y, -image_xscale, image_yscale + abs(sin(specialcontimer / 4) / 2), 0, c_white, flamealpha);
	draw_sprite_ext(sprite_index, 10 - flameframe, x, y, -image_xscale, image_yscale, 0, c_yellow, flamealpha / 2);
}
if (specialcon == 4 && wireframe_boxing == 0)
{
	duckactive = 1;
	if (specialcontimer == 0)
	{
		special_punch_count = 16;
		special_punch_turns = 3;
		if (!instance_exists(obj_rotating_sprites_controller))
		{
			instance_create(x, y, obj_rotating_sprites_controller);
			with (obj_rotating_sprite)
				sprite_index = spr_rotating_sprite3;
		}
	}
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
	{
		duckactive = 1;
		flamealpha = 1 - (specialcontimer / 30);
	}
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(sprite_index, 9 + flameframe, x, y, -image_xscale, image_yscale + abs(sin(specialcontimer / 4) / 2), 0, c_yellow, flamealpha);
	draw_sprite_ext(sprite_index, 10 - flameframe, x, y, -image_xscale, image_yscale, 0, c_yellow, flamealpha / 2);
}
if (specialcon == 5 && wireframe_boxing == 0)
{
	turboactive = 1;
	if (specialcontimer == 0)
	{
		special_punch_count = 999;
		special_punch_turns = 3;
	}
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
	{
		turboactive = 1;
		flamealpha = 1 - (specialcontimer / 30);
	}
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(sprite_index, 9 + flameframe, x, y, -image_xscale, image_yscale + abs(sin(specialcontimer / 4) / 2), 0, c_white, flamealpha);
	draw_sprite_ext(sprite_index, 10 - flameframe, x, y, -image_xscale, image_yscale, 0, c_orange, flamealpha / 2);
}
if (specialcon == 6 && wireframe_boxing == 0)
{
	specialcontimer++;
	if (specialcontimer == 1)
	{
		dmgwr = instance_create(x - 30, y - 75, obj_dmgwriter);
		with (dmgwr)
		{
			delay = 8;
			type = 3;
			damage = 100;
			if ((global.hp[1] + 100) > global.maxhp[1])
				damage = global.maxhp[1] - global.hp[1];
		}
		health_count += 100;
		if (health_count > health_count_max)
			health_count = health_count_max;
		global.hp[1] += 100;
		if (global.hp[1] > global.maxhp[1])
			global.hp[1] = global.maxhp[1];
		snd_play(snd_power);
	}
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
		flamealpha = 1 - (specialcontimer / 30);
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	draw_sprite_ext(sprite_index, 9 + flameframe, x, y, -image_xscale, image_yscale + abs(sin(specialcontimer / 4) / 2), 0, c_green, flamealpha);
	draw_sprite_ext(sprite_index, 10 - flameframe, x, y, -image_xscale, image_yscale, 0, c_lime, flamealpha / 2);
}
if (specialcon == 7 && wireframe_boxing == 0)
{
	specialcontimer++;
	if (specialcontimer > 0 && specialcontimer < 5)
		draw_sprite_ext(spr_bhero_item, specialcontimer * 2, x - 12, y - 161, 2, 2, 0, c_white, 1);
	else if (specialcontimer > 0)
		draw_sprite_ext(spr_bhero_item, 9, x - 12, y - 161, 2, 2, 0, c_white, 1 - ((specialcontimer - 10) / 20));
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
		flamealpha = 1 - (specialcontimer / 30);
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
}
if (specialcon == 8 && wireframe_boxing == 0)
{
	specialcontimer++;
	if (specialcontimer > 0 && specialcontimer < 5)
		draw_sprite_ext(spr_bhero_shield, specialcontimer * 2, x - 12, y - 161, 2, 2, 0, c_white, 1);
	else if (specialcontimer > 0)
		draw_sprite_ext(spr_bhero_shield, 9, x - 12, y - 161, 2, 2, 0, c_white, 1 - ((specialcontimer - 10) / 20));
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
		flamealpha = 1 - (specialcontimer / 30);
	if (specialcontimer >= 30 || global.boxingphase == 2)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
}
d3d_set_fog(0, c_white, 0, 0);
