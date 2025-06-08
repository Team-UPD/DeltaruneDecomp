if (kq == 1)
{
	draw_sprite_skew_ext_cute(sprite_index, image_index, x + ((12 * hskew) / 20), y, image_xscale, image_yscale, image_angle, 4210752, image_alpha, hskew, vskew);
	draw_sprite_skew_ext_cute(sprite_index, image_index, x + ((6 * hskew) / 20), y, image_xscale, image_yscale, image_angle, 8421504, image_alpha, hskew, vskew);
}
draw_sprite_skew_ext_cute(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, hskew, vskew);
draw_set_color(c_black);
draw_text(x + 10, y + 10, string_hash_to_newline("h: " + string(hskew) + "#v: " + string(vskew) + "rot: " + string(image_angle)));
timer++;
if (auto == 1 || auto == 2)
{
	if (timer == 8)
	{
		if (auto == 1)
		{
			hskew = random_range(-50, 50);
			vskew = random_range(-20, 20);
		}
		if (auto == 2)
		{
			image_speed = 0;
			image_index++;
			idealhskew = random_range(-50, 50);
			idealvskew = random_range(-20, 20);
		}
		timer = 0;
	}
	if (auto == 2)
	{
		hskew = lerp(hskew, idealhskew, 0.5);
		vskew = lerp(vskew, idealvskew, 0.5);
	}
}
