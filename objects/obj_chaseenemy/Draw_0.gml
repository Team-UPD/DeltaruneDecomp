if (drawoffscreen == 0)
{
	dodraw = 1;
	tolerance = sprite_height + sprite_width;
	if (!scr_onscreen_tolerance(id, tolerance))
		dodraw = 0;
}
else
{
	dodraw = true;
}
if (dodraw)
{
	drawx = 0;
	drawscale = 1;
	if (facing == 1 && specialspritecase == 0)
	{
		drawscale = -1;
		drawx = sprite_width;
	}
	drawsiner += 0.25;
	tempx = x;
	x += drawx;
	superscalex = 0;
	superdrawx = 0;
	superscalexb = 1;
	if (specialspritecase == 0)
	{
		if (facing == 0)
		{
			superscalex = 0;
		}
		else
		{
			superscalex = -4;
			superscalexb = -1;
			superdrawx = -sprite_width * 2;
		}
	}
	if (specialspritecase == "tasque")
	{
		if (facing == 1)
			sprite_index = spr_tasque_idle_flipped;
		if (facing == 0)
			sprite_index = spr_tasque_idle;
	}
	gpu_set_blendmode(bm_add);
	for (i = 0; i < 5; i++)
	{
		var aura = (i * 9) + ((drawsiner * 3) % 9);
		var aurax = (aura * 0.75) + (sin(aura / 4) * 4);
		var auray = 45 * scr_ease_in(aura / 45, 1);
		var aurayscale = min(80 / sprite_height, 1);
		draw_sprite_ext(sprite_index, walk_index, x - ((aurax / 180) * drawscale * sprite_width), y - ((auray / 82) * sprite_height * aurayscale), (image_xscale + (aurax / 36)) * drawscale, image_yscale + ((auray / 36) * aurayscale), image_angle, c_red, image_alpha * (1 - (auray / 45)) * 0.5);
	}
	gpu_set_blendmode(bm_normal);
	var xmult = min((70 / sprite_width) * 4, 4);
	var ymult = min((80 / sprite_height) * 5, 5);
	var ysmult = min((80 / sprite_height) * 0.2, 0.2);
	draw_sprite_ext_centerscale(sprite_index, walk_index, x + superdrawx + (sin(drawsiner / 5) * xmult), y + (cos(drawsiner / 5) * ymult), image_xscale + superscalex, image_yscale + (sin(drawsiner / 5) * ysmult), image_angle, 255, image_alpha * 0.2);
	draw_sprite_ext_centerscale(sprite_index, walk_index, (x + superdrawx) - (sin(drawsiner / 5) * xmult), y - (cos(drawsiner / 5) * ymult), image_xscale + superscalex, image_yscale - (sin(drawsiner / 5) * ysmult), image_angle, 255, image_alpha * 0.2);
	scr_draw_outline_ext(sprite_index, walk_index, x, y, image_xscale * drawscale, image_yscale, image_angle, c_red, image_alpha * 0.3, 2);
	draw_sprite_ext(sprite_index, walk_index, x, y, image_xscale * drawscale, image_yscale, image_angle, image_blend, image_alpha);
	x = tempx;
	mymidx = x + (sprite_width / 2);
	mymidy = y + ((bbox_bottom - y) / 2);
}
