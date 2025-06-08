if (image_index == 5 && hidemouthback == 0)
{
	with (obj_sneo_final_forme_mouth_back)
	{
		image_index = 7;
		x = obj_sneo_final_forme.x + obj_sneo_final_forme.headoffset_x;
		y = obj_sneo_final_forme.y + obj_sneo_final_forme.headoffset_y;
		visible = true;
	}
}
else
{
	with (obj_sneo_final_forme_mouth_back)
		visible = false;
}
draw_sprite_ext(sprite_index, 3, x, ystart - abs(sin(steptimer + ((state < 2) ? 0.15 : 0.05)) * 40), 1, 1, 0, image_blend, 1);
if (image_angle != 0)
{
	draw_sprite_ext(spr_sneo_final_forme_head_rotate_origin, image_index, x + 138 + headoffset_x, y + 135 + headoffset_y, image_xscale, image_yscale, image_angle, c_white, 1);
}
else if ((state >= 2 && state < 10) || (state == 11 && formtimer >= 30 && formtimer <= 70))
{
	var _shake = (state == 3) ? 2 : 1;
	draw_sprite(sprite_index, image_index, x + random_range(-_shake, _shake), ystart - abs((sin(steptimer + ((state < 2) ? 0.15 : 0.05)) * 40) + random_range(-_shake, _shake)));
}
else
{
	draw_sprite_ext(sprite_index, image_index, x + headoffset_x, y + headoffset_y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
if ((destroyable && state == 0) || (state == 1 && formtimer < 30))
{
	if (hurtalpha > 0)
		hurtalpha -= 0.1;
	draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_yellow, hurtalpha);
}
if (intro != 0)
{
	image_index = 4;
	introtimer++;
	image_blend = merge_color(c_black, c_white, clamp(((introtimer / 30) - 0.5) / 1.5, 0, 1));
	draw_sprite_ext(sprite_index, 2, x, y, 1, 1, 0, (intro == 1) ? merge_color(c_black, c_white, clamp(introtimer / 30, 0, 1)) : c_white, 1);
	if (introtimer >= 68)
	{
		intro = 0;
		image_index = 4;
		image_alpha = 1;
		image_blend = c_white;
	}
}
