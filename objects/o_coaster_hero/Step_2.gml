if (HeroID == 0 && instance_exists(obj_herokris))
{
	depth = 80;
	obj_herokris.depth = depth + 1;
}
if (HeroID == 1 && instance_exists(obj_herosusie))
{
	depth = 75;
	obj_herosusie.depth = depth + 1;
}
if (HeroID == 2 && instance_exists(obj_heroralsei))
{
	depth = 70;
	obj_heroralsei.depth = depth + 1;
}
back.x = x;
back.y = y + 8;
var xx = 0;
var yy = 0;
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
else if (sprite_index == spr_ralsei_spell)
{
	xx = -12;
	yy = -9;
}
else if (sprite_index == spr_ralsei_spellready)
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
	else if (sprite_index == spr_krisb_attackready)
	{
		obj_herokris.x = x + 20 + xx;
		obj_herokris.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herokris.depth = depth + 1;
	}
	else if (sprite_index == spr_krisb_attack)
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
		obj_rudebuster_anim.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 64;
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 24;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_spell)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 64;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_spellready)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 27;
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
	else if (sprite_index == spr_susieb_attackready)
	{
		obj_herosusie.x = x + 20 + xx;
		obj_herosusie.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_herosusie.depth = depth + 1;
	}
	else if (sprite_index == spr_susieb_attack)
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
		obj_heroralsei.x = x + 10 + xx;
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
	else if (sprite_index == spr_ralsei_spell)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy + 8;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
	else if (sprite_index == spr_ralsei_spellready)
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
	if (obj_heroralsei.sprite_index == spr_ralsei_idle && sprite_index == spr_ralsei_spell)
	{
		obj_heroralsei.x = x + 20 + xx;
		obj_heroralsei.y = (y - (sprite_get_height(sprite_index) * a)) + yy;
		userealsprite = 1;
		obj_heroralsei.depth = depth + 1;
	}
}
if (sprite_index == spr_krisb_attack && image_index > 6.5 && forceact == 1 && introanim == 1)
{
	sprite_index = spr_krisb_idle;
	image_speed = 0;
	image_index = 0;
	forceact = 0;
	introanim = 0;
}
if (sprite_index == spr_susie_attack && image_index > 3.5 && forceact == 1 && introanim == 1)
{
	sprite_index = spr_susieb_idle;
	image_speed = 0;
	image_index = 0;
	forceact = 0;
	introanim = 0;
}
if (sprite_index == spr_ralsei_battleintro && image_index > 10 && forceact == 1 && introanim == 1)
{
	sprite_index = spr_ralsei_idle;
	image_speed = 0;
	image_index = 9;
	forceact = 0;
	introanim = 0;
}
