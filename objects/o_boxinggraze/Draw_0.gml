var x_offset = -5;
var y_offset = -5;
if (i_ex(o_boxingcontroller))
{
	if (o_boxingcontroller.drawflip == 0)
	{
		if (o_boxingcontroller.sprite_index == spr_bhero)
		{
			if (o_boxingcontroller.image_index == 4)
			{
				x_offset = 22;
				y_offset = -5;
			}
		}
	}
	else if (o_boxingcontroller.sprite_index == spr_bhero)
	{
		if (o_boxingcontroller.image_index == 4)
		{
			x_offset = -22;
			y_offset = -5;
		}
	}
	if (o_boxingcontroller.sprite_index == spr_bhero)
	{
		if (o_boxingcontroller.image_index == 6)
		{
			x_offset = -12;
			y_offset = 2;
		}
	}
}
draw_sprite_ext(sprite_index, image_index, x + x_offset, y + y_offset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
