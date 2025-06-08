if (target_char == noone)
	exit;
if (init == 0)
{
	if (instance_exists(obj_caterpillarchara))
	{
		second_char = 279;
		second_sprite = obj_caterpillarchara.sprite_index;
	}
	depth = 0;
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
else if (target_char.sprite_index == target_char.rsprite)
{
	sprite_index = rsprite;
}
else
{
	sprite_index = target_char.sprite_index;
}
if (i_ex(second_char))
{
	if (second_char.sprite_index == second_char.usprite)
		second_sprite = spr_noelle_walk_up_lw;
	else if (second_char.sprite_index == second_char.dsprite)
		second_sprite = spr_noelle_walk_down_lw;
	else if (second_char.sprite_index == second_char.lsprite)
		second_sprite = spr_noelle_walk_left_lw;
	else if (second_char.sprite_index == second_char.rsprite)
		second_sprite = spr_noelle_walk_right_lw;
	else
		second_sprite = second_char.sprite_index;
}
draw_set_color(#2E88F0);
draw_rectangle(298 - (camerax() / 4), 40, 402 - (camerax() / 4), 480, 0);
draw_rectangle(598 - (camerax() / 4), 80, 702 - (camerax() / 4), 480, 0);
draw_set_color(c_black);
draw_rectangle(300 - (camerax() / 4), 42, 400 - (camerax() / 4), 480, 0);
draw_rectangle(600 - (camerax() / 4), 82, 700 - (camerax() / 4), 480, 0);
draw_set_color(c_white);
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_rectangle(300 - (camerax() / 4), 0, 400 - (camerax() / 4), 480, 0);
draw_rectangle(600 - (camerax() / 4), 0, 700 - (camerax() / 4), 480, 0);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
if (!i_ex(second_char) || (target_char.y - 18) < second_char.y)
{
	d3d_set_fog(true, color, 0, 1);
	if (outline)
	{
		draw_sprite_ext(sprite_index, target_char.image_index, target_char.x - 2, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
		draw_sprite_ext(sprite_index, target_char.image_index, target_char.x + 2, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
		draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y - 2, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
		draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y + 2, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
		d3d_set_fog(true, c_black, 0, 1);
	}
	draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
}
d3d_set_fog(true, c_yellow, 0, 1);
if (i_ex(second_char))
{
	if (outline)
	{
		draw_sprite_ext(second_sprite, second_char.image_index, second_char.x - 2, second_char.y, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1);
		draw_sprite_ext(second_sprite, second_char.image_index, second_char.x + 2, second_char.y, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1);
		draw_sprite_ext(second_sprite, second_char.image_index, second_char.x, second_char.y - 2, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1);
		draw_sprite_ext(second_sprite, second_char.image_index, second_char.x, second_char.y + 2, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1);
		d3d_set_fog(true, c_black, 0, 1);
	}
	draw_sprite_ext(second_sprite, second_char.image_index, second_char.x, second_char.y, second_char.image_xscale, second_char.image_yscale, 0, image_blend, 1);
	if ((target_char.y - 18) >= second_char.y)
	{
		d3d_set_fog(true, color, 0, 1);
		if (outline)
		{
			draw_sprite_ext(sprite_index, target_char.image_index, target_char.x - 2, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
			draw_sprite_ext(sprite_index, target_char.image_index, target_char.x + 2, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
			draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y - 2, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
			draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y + 2, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
			d3d_set_fog(true, c_black, 0, 1);
		}
		draw_sprite_ext(sprite_index, target_char.image_index, target_char.x, target_char.y, target_char.image_xscale, target_char.image_yscale, 0, image_blend, 1);
		gpu_set_alphatestenable(false);
	}
}
d3d_set_fog(false, c_black, 0, 0);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
