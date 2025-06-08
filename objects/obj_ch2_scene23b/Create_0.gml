con = -1;
customcon = 0;
steal_susie = false;
steal_icee = false;
with (obj_mainchara)
	bg = 1;
moon = instance_create(-163, 0, obj_backgrounderparent);
moon.sprite_index = bg_dw_noelle_room_moon;
moon.depth = 1000100;
if (global.flag[393] == 0)
{
	susie_statue = instance_create(137, 176, obj_npc_sign);
	susie_statue.sprite_index = spr_dw_susie_statue;
	susie_statue.setdepth = 0;
	susie_statue.depth = 98000;
}
if (global.flag[394] == 0)
{
	icee_cushion = instance_create(373, 194, obj_npc_sign);
	icee_cushion.sprite_index = spr_dw_icee_cushion;
	icee_cushion.setdepth = 0;
	icee_cushion.depth = 98000;
}
if (global.chapter != 2 || global.flag[319] > 0)
{
	layer_set_visible("Backgrounds_3", 0);
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	with (obj_mainchara)
		visible = 0;
	blackall = scr_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	blackall.image_alpha = 1;
	fadeout = false;
	rudebuster = false;
	rudebuster_timer = 0;
	wirecon = 0;
	werewire1 = scr_dark_marker(575, cameray() - (sprite_get_height(spr_werewire_static) * 2), spr_werewire_static);
	werewire1.image_speed = 0;
	werewire1.image_xscale = -2;
	werewire2 = scr_dark_marker(705, cameray() - (sprite_get_height(spr_werewire_static) * 2), spr_werewire_static);
	werewire2.image_speed = 0;
	sparecon = false;
	disable_face = true;
}
