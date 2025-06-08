if (draw_button_press == 1 && obj_berdlyb_enemy.bumpactstarted == 1)
{
	draw_button_press_timer++;
	if (draw_button_press_timer > 12)
		draw_button_press_timer = 0;
	var xx1 = x + 129;
	var yy1 = y - 24;
	var xx2 = x + 163;
	var yy2 = y + 8;
	if (draw_button_press_timer > 7)
		draw_rectangle_color(xx1, yy1, xx2, yy2, c_white, c_white, c_white, c_white, 0);
	else if (HeroID == 0)
		draw_rectangle_color(xx1, yy1, xx2, yy2, c_aqua, c_aqua, c_aqua, c_aqua, 0);
	else if (HeroID == 1)
		draw_rectangle_color(xx1, yy1, xx2, yy2, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, 0);
	else if (HeroID == 2)
		draw_rectangle_color(xx1, yy1, xx2, yy2, c_lime, c_lime, c_lime, c_lime, 0);
	draw_rectangle_color(xx1 + 2, yy1 + 2, xx2 - 2, yy2 - 2, c_black, c_black, c_black, c_black, 0);
	xx1 = x + 135;
	yy1 = y - 25;
	if (HeroID == 0)
		draw_text_ext_transformed(xx1, yy1, "Z!", 9999, 9999, 2, 2, 0);
	if (HeroID == 1)
		draw_text_ext_transformed(xx1, yy1, "X!", 9999, 9999, 2, 2, 0);
	if (HeroID == 2)
		draw_text_ext_transformed(xx1, yy1, "C!", 9999, 9999, 2, 2, 0);
}
if (nitro == 1)
{
	flametimer++;
	if (flametimer >= 3)
	{
		flametimer = 0;
		flame = instance_create(x + 0, y - 10, o_boxingflame);
		flame.direction = 180;
		flame.speed = 6;
		flame.friction = 0.2;
		flame.depth = depth + 10;
	}
	flameindextimer++;
	if (flameindextimer == 4)
	{
		flameindextimer = 0;
		if (flameindex == 0)
			flameindex = 1;
		else
			flameindex = 0;
	}
	draw_sprite_ext(spr_bhero, 9 + flameindex, x + 12, y - 10, 0.25, 0.5, 90, c_orange, 0.6);
}
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
var hurt = 0;
if (sprite_index == spr_krisb_hurt)
	hurt = 1;
if (sprite_index == spr_susie_hurt)
	hurt = 1;
if (sprite_index == spr_susieb_hurt)
	hurt = 1;
if (sprite_index == spr_ralsei_hurt_fixed)
	hurt = 1;
if (HeroID == 0 && obj_herokris.hurt > 0)
	hurt = 1;
if (HeroID == 1 && instance_exists(obj_herosusie) && obj_herosusie.hurt > 0)
	hurt = 1;
if (HeroID == 2 && instance_exists(obj_heroralsei) && obj_heroralsei.hurt > 0)
	hurt = 1;
back.x = x;
back.y = y + 8;
if (userealsprite == 0)
	draw_sprite_ext(sprite_index, image_index, x + 20 + xx, (y - (sprite_get_height(sprite_index) * a)) + yy + 8, image_xscale, image_yscale, 0, c_white, image_alpha);
if (hurt == 0)
	draw_sprite_ext(spr_coaster_hero, HeroID, x, y + 8, image_xscale, image_yscale, 0, c_white, image_alpha);
if (hurt == 1)
	draw_sprite_ext(spr_coaster_hero_hurt, HeroID, x, y + 8, image_xscale, image_yscale, 0, c_white, image_alpha);
if (hspeed < 0 || disabled == 1)
{
	if (userealsprite == 0)
		draw_sprite_ext(sprite_index, image_index, x + 20 + xx, (y - (sprite_get_height(sprite_index) * a)) + yy + 8, image_xscale, image_yscale, 0, c_black, 0.4);
	if (hurt == 0)
		draw_sprite_ext(spr_coaster_hero, HeroID, x, y + 8, image_xscale, image_yscale, 0, c_black, 0.4);
	if (hurt == 1)
		draw_sprite_ext(spr_coaster_hero_hurt, HeroID, x, y + 8, image_xscale, image_yscale, 0, c_black, 0.4);
}
