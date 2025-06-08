if (!i_ex(target_char))
{
	instance_destroy();
	exit;
}
if (!target_char.visible)
	exit;
if (target_char == noone)
	exit;
if (init == 0)
{
	depth = 0;
	if (target_char != obj_mainchara)
	{
		if (target_char.name == "susie")
			color = #EA79C8;
		if (target_char.name == "ralsei")
			color = #B5E61D;
		if (target_char.name == "noelle")
		{
			color = c_yellow;
			rsprite = spr_noelle_young_silhouette;
		}
	}
	init = 1;
}
if (copy_sprite)
{
	sprite_index = target_char.sprite_index;
	image_index = target_char.image_index;
}
else if (target_char.sprite_index == target_char.usprite)
{
	sprite_index = usprite;
}
else if (target_char.sprite_index == target_char.dsprite)
{
	sprite_index = dsprite;
}
else if (target_char.sprite_index == target_char.lsprite)
{
	sprite_index = lsprite;
}
else if (target_char.sprite_index == target_char.rsprite || target_char.sprite_index == spr_noelle_walk_face_up_dw)
{
	obj_silhouette_base.outline = true;
	sprite_index = rsprite;
}
else
{
	sprite_index = target_char.sprite_index;
}
depth = 4000;
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
gpu_set_alphatestenable(true);
gpu_set_blendenable(true);
if (instance_number(obj_silhouette_cover) > 0)
{
	for (i = 0; i < instance_number(obj_silhouette_cover); i++)
	{
		var _cover = instance_find(obj_silhouette_cover, i);
		if (tiled_cover)
			scr_draw_sprite_tiled_area(_cover.sprite_index, 0, _cover.x, _cover.y, _cover.x, _cover.y, _cover.x + (sprite_get_width(_cover.sprite_index) * _cover.image_xscale), _cover.y + (sprite_get_height(_cover.sprite_index) * _cover.image_yscale), 2, 2, c_white, 1);
		else
			draw_sprite_ext(_cover.sprite_index, _cover.image_index, _cover.x, _cover.y, _cover.image_xscale, _cover.image_yscale, _cover.image_angle, c_white, 1);
	}
}
gpu_set_blendenable(true);
if (outline)
{
	gpu_set_blendmode_ext(bm_add, bm_zero);
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, c_black, 1);
}
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
d3d_set_fog(true, color, 0, 1);
if (outline)
{
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x - 2, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x + 2, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y - 2, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y + 2, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
}
else
{
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, c_black, 1);
}
draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, c_black, 0.5);
d3d_set_fog(false, c_black, 0, 0);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
