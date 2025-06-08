flashsiner++;
var blend_color = merge_color(#00A2E8, c_aqua, 0.25 + (sin(flashsiner / 3) * 0.25));
if (destroying == 0 && offset > 0)
{
	if (offset > offsetCap)
		offset -= 20;
	if (crushedObj > 0)
	{
		if (crushedObj == 1)
		{
			var emailColor = active ? blend_color : 16777215;
			if (hp > 0)
				draw_sprite_ext(spr_spamton_dollar, 0, x, y, 1, hp - 1, 0, emailColor, 1);
		}
		else
		{
			var bombflash = crushtimer > 10 && (crushtimer % 2) == 0;
			if (bombflash)
				d3d_set_fog(true, c_white, 0, 1);
			var bomb_color = merge_color(c_red, c_orange, 0.25 + (sin(flashsiner / 3) * 0.25));
			draw_sprite_ext(spr_sneo_bomb, 0, x, y, 1, 1, 0, bomb_color, 1);
			if (bombflash)
				d3d_set_fog(false, c_black, 0, 0);
		}
	}
	else
	{
		draw_sprite(spr_spamton_dollar, 0, x, y);
	}
	if (crushtimer >= 10 && offset == offsetCap && offset > 0)
		offset++;
	else if (offset < offsetCap)
		offset = offsetCap;
	drawcolor = c_white;
}
if (offset <= offsetCap)
{
	if (offset == 0)
		drawcolor = blend_color;
	animtimer++;
	if (animtimer > 1)
	{
		animtimer = 0;
		subindex = (subindex + 1) % 4;
	}
}
var s = image_xscale;
var destroycrop = destroying - 60;
var bottomcrop = y - 326;
if ((destroycrop <= 0 && difficulty != 3 && difficulty != 5) || (destroycrop <= -45 && difficulty == 3) || (destroycrop <= -45 && difficulty == 5))
{
	draw_sprite_ext(spr_sneo_pillar_thick, 0, x, y - 32 - offset, s, 16, 0, image_blend, 1);
	draw_sprite_ext(spr_sneo_pillar_thick, 0, x, 326, s, clamp((326 - (y + 32 + offset)) / 16, 0, 16), 0, image_blend, 1);
	draw_sprite_ext(spr_sneo_pillar_piston, 0, x, y - offset, s, s, 0, image_blend, 1);
	if ((y + offset) < 310)
		draw_sprite_ext(spr_sneo_pillar_piston, 0, x, y + offset, s, -s, 0, image_blend, 1);
	if (flash)
		d3d_set_fog(true, image_blend, 0, 1);
	draw_sprite_ext(spr_sneo_pillar_head_top, subindex, x, y - offset, s, s, 0, drawcolor, 1);
	if ((y + offset) < 326)
		draw_sprite_ext(spr_sneo_pillar_head_bottom, subindex, x, y + offset, s, s, 0, drawcolor, 1);
	if (flash)
	{
		d3d_set_fog(false, c_black, 0, 0);
		flash = 0;
	}
}
else
{
	if (destroycrop < 36)
	{
		scr_draw_sprite_crop_ext(spr_sneo_pillar_piston, 0, 0, 0, 32, 16 - (destroycrop / 2), x, y - offset, s, s, image_blend, 1);
		scr_draw_sprite_crop_ext(spr_sneo_pillar_piston, 0, 0, 0, 32, 16 - (destroycrop / 2), x, y + offset, s, -s, image_blend, 1);
		scr_draw_sprite_crop_ext(spr_sneo_pillar_head_top, 2, 0, 0, 1, 18 - (destroycrop / 2), x, y - offset, s, s, image_blend, 1);
		scr_draw_sprite_crop_ext(spr_sneo_pillar_head_bottom, 2, 0, destroycrop / 2, 1, 18, x, y - offset, s, s, image_blend, 1);
	}
	draw_sprite_ext(spr_sneo_pillar_thick, 0, x, 326, s, clamp((326 - (y + 32 + destroycrop)) / 16, 0, 16), 0, image_blend, 1);
	draw_sprite_ext(spr_sneo_pillar_thick, 0, x, y - 32 - destroycrop, s, 16, 0, image_blend, 1);
}
if ((destroying > 0 && difficulty != 3 && difficulty != 5) || (destroying > 0 && destroying < 30 && difficulty == 3) || (destroying > 0 && destroying < 30 && difficulty == 5))
{
	var d = instance_create(x + random_range(-10, 10), y + destroying, obj_animation_dx);
	d.sprite_index = spr_thrash_missile_explosion;
	d.depth = depth - 1;
	if ((y + destroying) > (cameray() + 280))
		d.depth = obj_heart.depth + 100;
	d.image_angle = 180;
	d = instance_create(x + random_range(-10, 10), y - destroying, obj_animation_dx);
	d.sprite_index = spr_thrash_missile_explosion;
	d.depth = depth - 1;
	if ((y - destroying) > (cameray() + 280))
		d.depth = obj_heart.depth + 100;
	if (crushedObj == 2)
	{
		d = instance_create(x + (destroying * 2), y + random_range(-10, 10), obj_animation_dx);
		d.sprite_index = spr_thrash_missile_explosion;
		d.depth = depth - 1;
		d.image_angle = -90;
		d = instance_create(x - (destroying * 3), y + random_range(-10, 10), obj_animation_dx);
		d.sprite_index = spr_thrash_missile_explosion;
		d.depth = depth - 1;
		d.image_angle = 90;
	}
}
