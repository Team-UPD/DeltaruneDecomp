if (instance_exists(obj_berdlyb_enemy) && obj_berdlyb_enemy.nitro > 0)
	nitro = 1;
else
	nitro = 0;
if (o_coaster_controller.actcon == 1 && o_coaster_controller.timer < o_coaster_controller.timermax && bump == 1)
{
	if ((HeroID == 0 && gooffscreen == 0) || (HeroID == 1 && gooffscreen == 0) || (HeroID == 2 && gooffscreen == 0))
	{
		if (visible == 1)
		{
			bump = 0;
			mykeybuffer = 3;
			o_coaster_controller.playerinput = 1;
			if ((HeroID == 0 && sprite_index != spr_krisb_act) || (HeroID == 0 && sprite_index == spr_krisb_act && image_index > 9))
			{
				sprite_index = spr_krisb_act;
				image_index = 0;
				forceact = 1;
				image_speed = 0.5;
			}
			if ((HeroID == 1 && sprite_index != spr_susie_act) || (HeroID == 1 && sprite_index == spr_susie_act && image_index > 8))
			{
				sprite_index = spr_susie_act;
				image_index = 0;
				forceact = 1;
				image_speed = 0.5;
			}
			if ((HeroID == 2 && sprite_index != spr_ralsei_act) || (HeroID == 2 && sprite_index == spr_ralsei_act && image_index > 11))
			{
				sprite_index = spr_ralsei_act;
				image_index = 0;
				forceact = 1;
				image_speed = 0.5;
			}
		}
	}
}
if (o_coaster_controller.actcon != 0)
	actoncondelay = 1;
if (instance_exists(obj_battleblcon))
	actoncondelay = 0;
if (o_coaster_controller.actcon == 0 && actoncondelay == 0 && endscene == 0)
{
	if (HeroID == 0 && forceact == 0)
	{
		sprite_index = obj_herokris.sprite_index;
		image_index = obj_herokris.image_index - 1;
	}
	if (HeroID == 1 && forceact == 0 && instance_exists(obj_herosusie))
	{
		sprite_index = obj_herosusie.sprite_index;
		image_index = obj_herosusie.image_index - 1;
	}
	if (HeroID == 2 && forceact == 0 && instance_exists(obj_heroralsei))
	{
		sprite_index = obj_heroralsei.sprite_index;
		image_index = obj_heroralsei.image_index - 1;
	}
}
if (sprite_index == spr_krisb_act && image_index > 10)
{
	obj_herokris.sprite_index = spr_krisb_idle;
	image_speed = 0.25;
	sprite_index = spr_krisb_idle;
}
if (sprite_index == spr_susie_act && image_index > 9)
{
	sprite_index = spr_susieb_idle;
	image_speed = 0.25;
}
if (sprite_index == spr_susieb_act && image_index > 9)
	sprite_index = spr_susieb_idle;
if (sprite_index == spr_ralsei_act && image_index > 11)
{
	sprite_index = spr_ralsei_idle;
	image_speed = 0.25;
	forceact = 0;
}
if (sprite_index == spr_krisb_attack && forceact == 1 && introanim == 1)
{
	sprite_index = spr_krisb_idle;
	image_speed = 0;
	image_index = 0;
	forceact = 0;
	introanim = 0;
}
if (sprite_index == spr_susie_attack && forceact == 1 && introanim == 1)
{
	sprite_index = spr_susieb_idle;
	image_speed = 0;
	image_index = 0;
	forceact = 0;
	introanim = 0;
}
if (sprite_index == spr_ralsei_battleintro && forceact == 1 && introanim == 1)
{
	sprite_index = spr_ralsei_idle;
	image_speed = 0;
	image_index = 9;
	forceact = 0;
	introanim = 0;
}
var xx, yy;
if (sprite_index == spr_krisb_idle)
{
	xx = 4;
	yy = -11;
}
else if (sprite_index == spr_krisb_attack)
{
	xx = 0;
	yy = 8;
}
else if (sprite_index == spr_krisb_attackready)
{
	xx = 0;
	yy = 8;
}
else if (sprite_index == spr_susie_idle)
{
	xx = 0;
	yy = -9;
}
else if (sprite_index == spr_susieb_idle)
{
	xx = 0;
	yy = -9;
}
else if (sprite_index == spr_susieb_itemready)
{
	xx = 0;
	yy = -9;
}
else if (sprite_index == spr_susieb_item)
{
	xx = 0;
	yy = -9;
}
else if (sprite_index == spr_ralsei_idle)
{
	xx = -12;
	yy = -9;
}
else if (sprite_index == spr_ralsei_act)
{
	xx = -12;
	yy = 0;
}
else if (sprite_index == spr_ralsei_walk_right)
{
	xx = 0;
	yy = -16;
}
else if (sprite_index == spr_ralsei_right)
{
	xx = 0;
	yy = -16;
}
else if (sprite_index == spr_krisb_victory)
{
	xx = 0;
	yy = -11;
}
else if (sprite_index == spr_ralsei_victory)
{
	xx = 0;
	yy = -9;
}
else if (sprite_index == spr_krisr_dark)
{
	xx = 5;
	yy = -10;
}
else if (sprite_index == spr_susie_right_dw)
{
	xx = 10;
	yy = -13;
}
else if (sprite_index == spr_ralsei_walk_right)
{
	xx = 1;
	yy = -2;
}
else
{
	xx = 0;
	yy = 0;
}
if (HeroID == 1)
	xx = xx - 10;
var a = 2;
if (sprite_index == spr_susieb_actready)
	a = 1.5;
if (sprite_index == spr_susieb_act)
	a = 1.5;
if (sprite_index == spr_susieb_attackready)
	a = 1.5;
if (sprite_index == spr_susieb_attack)
	a = 1.5;
if (sprite_index == spr_susieb_defend)
	a = 1.5;
if (sprite_index == spr_susie_rudebuster)
	a = 1.5;
if (sprite_index == spr_susie_spell)
	a = 1.5;
if (sprite_index == spr_susie_spellready)
	a = 1.5;
if (sprite_index == spr_susie_actready)
	a = 1.5;
if (sprite_index == spr_susie_act)
	a = 1.5;
if (sprite_index == spr_susie_attackready)
	a = 1.5;
if (sprite_index == spr_susie_attack)
	a = 1.5;
if (sprite_index == spr_susie_defend)
	a = 1.5;
userealsprite = 0;
if (HeroID == 0)
{
	if (sprite_index == spr_krisb_hurt)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (sprite_index == spr_krisb_idle && dontshowherosprite < 1)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (sprite_index == spr_krisb_defend)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (sprite_index == spr_krisb_item)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (sprite_index == spr_krisb_itemready)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (sprite_index == spr_krisb_actready)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (dontshowherosprite > 0)
	{
		dontshowherosprite--;
		userealsprite = 0;
	}
	else
	{
		obj_herokris.x = camerax() - 300;
	}
}
if (HeroID == 1 && instance_exists(obj_herosusie))
{
	if (sprite_index == spr_susie_hurt)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_idle && dontshowherosprite < 1)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_hurt)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (obj_herosusie.hurt > 0)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_defend)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susie_rudebuster)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (instance_exists(obj_rudebuster_anim))
	{
		obj_rudebuster_anim.x = x + 20 + xx;
		obj_rudebuster_anim.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susie_spell)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susie_spellready)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_actready)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_itemready)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_item)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (dontshowherosprite > 0)
	{
		dontshowherosprite--;
		userealsprite = 0;
	}
	else
	{
		obj_herosusie.x = camerax() - 300;
	}
}
if (HeroID == 2 && instance_exists(obj_heroralsei))
{
	if (sprite_index == spr_ralsei_idle && dontshowherosprite < 1)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
	else if (sprite_index == spr_ralsei_hurt_fixed)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
	else if (sprite_index == spr_ralsei_defend)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
	else if (sprite_index == spr_ralsei_item)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
	else if (sprite_index == spr_ralsei_itemready)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
	else if (dontshowherosprite > 0)
	{
		dontshowherosprite--;
		userealsprite = 0;
	}
	else
	{
		obj_heroralsei.x = camerax() - 300;
	}
}
if (endscene == 1 && instance_exists(obj_ch2_scene11a))
{
	if (HeroID == 0)
	{
		xx = obj_ch2_scene11a.coaster_kris.x + obj_ch2_scene11a.coaster_kris.sinerx + obj_ch2_scene11a.coaster_kris.coaster_offset_x;
		yy = obj_ch2_scene11a.coaster_kris.y + 37 + obj_ch2_scene11a.coaster_kris.sinery + obj_ch2_scene11a.coaster_kris.coaster_offset_y;
	}
	if (HeroID == 1)
	{
		xx = obj_ch2_scene11a.coaster_susie.x + obj_ch2_scene11a.coaster_susie.sinerx + obj_ch2_scene11a.coaster_susie.coaster_offset_x;
		yy = obj_ch2_scene11a.coaster_susie.y + 37 + obj_ch2_scene11a.coaster_susie.sinery + obj_ch2_scene11a.coaster_susie.coaster_offset_y;
	}
	if (HeroID == 2)
	{
		xx = obj_ch2_scene11a.coaster_ralsei.x + 8 + obj_ch2_scene11a.coaster_ralsei.sinerx + obj_ch2_scene11a.coaster_ralsei.coaster_offset_x;
		yy = obj_ch2_scene11a.coaster_ralsei.y + 44 + obj_ch2_scene11a.coaster_ralsei.sinery + obj_ch2_scene11a.coaster_ralsei.coaster_offset_y;
	}
	if (endscenetimer < 10)
		endscenetimer++;
	x = lerp(x, xx, endscenetimer / 10);
	y = lerp(y, yy, endscenetimer / 10);
}
if (disabled == 1)
{
	disabledtimer--;
	if (disabledtimer <= 0)
		disabled = 0;
}
if (con == 0)
{
	siner += 0.4;
	if (gooffscreen == 0 && endscene == 0)
		x = xstart + (sin(siner / 6) * 3);
	if (mykeybuffer > 0 && disabled == 0)
	{
		con = 1;
		snd_play_pitch(snd_drive, 1 + random(0.2));
		dashtimer = 0;
		damaged = 0;
		with (o_coaster_controller)
			buttonspressed += 1;
	}
}
if (con == 1)
{
	if (nitro == 0)
	{
		if (obj_berdlyb_enemy.bumpactfast == 1)
		{
			hspeed += 6;
			if (hspeed > 45)
				hspeed = 45;
		}
		else
		{
			hspeed += 4;
			if (hspeed > 30)
				hspeed = 30;
		}
	}
	if (nitro == 1)
	{
		hspeed += 8;
		if (hspeed > 60)
			hspeed = 60;
	}
	smoketimer += 2;
	if (smoketimer >= 3)
		smoketimer = 0;
	if (x >= (camerax() + 200))
		con = 2;
	if (damaged == 1)
	{
		con = 5;
		hspeed = -48;
		if (nitro == 1)
			hspeed = -200;
	}
}
if (con == 2)
{
	if (damaged == 1)
		con = 5;
	if (hspeed >= -6)
		hspeed -= 2;
	if (nitro == 1)
	{
		hspeed -= 1;
		if (x >= (camerax() + 400) && hspeed > 0)
			hspeed = -2;
	}
	if (x <= (xstart + 10))
	{
		damaged = 0;
		hspeed = 0;
		siner = 0;
		con = 0;
	}
}
if (con == 5)
{
	hspeed = -30;
	if (nitro == 1)
		hspeed = -100;
	if (x <= (xstart - hspeed))
	{
		hspeed = 0;
		damaged = 0;
		siner = 0;
		con = 0;
	}
}
mykeybuffer -= 1;
if (gooffscreen == 2)
{
	if (HeroID == 0)
		x -= 2;
}
