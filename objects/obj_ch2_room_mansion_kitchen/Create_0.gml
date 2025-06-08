con = -1;
for (var i = 0; i < 26; i++)
{
	var timer_sprite = ((i % 3) == 1) ? bg_dw_mansion_kitchen_timer_blink : bg_dw_mansion_kitchen_timer;
	var timer = scr_marker(120 + (i * 40), 40, timer_sprite);
	timer.image_speed = 0.1;
	timer.depth = 900000;
}
swatchling_npc_a = instance_create(790, 93, obj_npc_swatchling_scared);
with (swatchling_npc_a)
{
	scr_depth();
	sprite_index = (global.flag[362] == 0) ? spr_npc_swatchling_scared : spr_npc_swatchling_down;
	image_speed = 0.25;
	current_pal = yellow;
}
swatchling_npc_b = instance_create(550, 150, obj_npc_swatchling_scared);
with (swatchling_npc_b)
{
	scr_depth();
	sprite_index = spr_npc_swatchling_scared;
	image_speed = 0.25;
}
swatchling_npc_c = instance_create(675, 4, obj_npc_swatchling_scared);
with (swatchling_npc_c)
{
	scr_depth();
	sprite_index = spr_npc_swatchling_scared;
	current_pal = red;
	image_speed = 0.25;
}
cheese_a = scr_dark_marker(15, 150, spr_mazecheese);
with (cheese_a)
{
	image_index = global.flag[362];
	scr_depth();
}
cheese_b = scr_dark_marker(55, 210, spr_mazecheese);
with (cheese_b)
{
	image_index = global.flag[362];
	scr_depth();
}
cheese_c = scr_dark_marker(15, 260, spr_mazecheese);
with (cheese_c)
{
	image_index = global.flag[362];
	scr_depth();
}
if (global.flag[362] == 0)
{
	mouse_a = scr_dark_marker(50, cheese_a.y, spr_maus_idle);
	with (mouse_a)
		image_speed = 0.25;
	mouse_a.depth = cheese_a.depth - 10;
	mouse_b = scr_dark_marker(90, cheese_b.y, spr_maus_idle);
	with (mouse_b)
		image_speed = 0.25;
	mouse_b.depth = cheese_b.depth - 10;
	mouse_c = scr_dark_marker(50, cheese_c.y, spr_maus_idle);
	with (mouse_c)
		image_speed = 0.25;
	mouse_c.depth = cheese_c.depth - 10;
	whiteall = scr_marker(-10, -10, spr_pixel_white);
	whiteall.image_xscale = 999;
	whiteall.image_yscale = 999;
	whiteall.depth = 0;
	whiteall.image_alpha = 0;
	fade_timer = 0;
	mauswheel = -4;
}
