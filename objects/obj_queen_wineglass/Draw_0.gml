starty = obj_queen_wineglass.ystart + 52;
var y_offset = 0;
draw_set_color(acidColor);
starttimer++;
if (starttimer == 30)
	snd_play(snd_spearappear_choppy);
if (starttimer == 43)
{
	state = 1;
	obj_queen_wineflass_pushin.visible = true;
}
winewave.depth = depth + 3;
winewave2.depth = depth + 1;
if (instance_exists(obj_moveheart))
	obj_moveheart.depth = depth - 9999;
if (instance_exists(obj_heart))
	obj_heart.depth = depth + 2;
if (state == 1)
{
	var xtangle = obj_queen_wineglass.xstart;
	var bottomfill = min(fill, 25);
	var topfill = min(fill, 36);
	var tri_x2 = 0;
	var tri_x3 = 0;
	var tri_y2 = 0;
	var tri_y3 = 0;
	if (bottomfill < 18)
	{
		if (image_angle > 5)
		{
			tri_x2 = abs(image_angle) / 3;
			tri_x3 = (abs(image_angle) / 2) * -1;
		}
		if (image_angle < -5)
		{
			tri_x3 = abs(image_angle) / 3;
			tri_x2 = (abs(image_angle) / 2) * -1;
		}
	}
	else if (bottomfill < 24)
	{
		if (image_angle > 5)
		{
			tri_x2 = abs(image_angle) / 6;
			tri_x3 = (abs(image_angle) / 6) * -1;
		}
		if (image_angle < -5)
		{
			tri_x3 = abs(image_angle) / 6;
			tri_x2 = (abs(image_angle) / 6) * -1;
		}
	}
	else if (bottomfill < 26)
	{
		if (image_angle > 5)
		{
			tri_x2 = abs(image_angle) / 3;
			tri_x3 = (abs(image_angle) / 6) * -1;
		}
		else if (image_angle < -5)
		{
			tri_x3 = abs(image_angle) / 6;
			tri_x2 = (abs(image_angle) / 6) * -1;
		}
		else
		{
			tri_x2 = 3;
			tri_x3 = 3;
			tri_y2 = 1;
			tri_y3 = 1;
		}
	}
	else if (image_angle > 6)
	{
		tri_x2 = abs(image_angle) * 1.8;
		tri_x3 = 8;
		tri_y2 = abs(image_angle) / 2.04;
		tri_y3 = abs(image_angle) / 4;
	}
	else if (image_angle < -6)
	{
		tri_x3 = abs(image_angle) * 0.85;
		tri_x2 = 7;
		tri_y3 = abs(image_angle) / 4;
		tri_y2 = abs(image_angle) / 4;
	}
	else
	{
		tri_x2 = 14;
		tri_x3 = 10;
		tri_y2 = 3;
		tri_y3 = 2;
	}
	draw_triangle(obj_queen_wineglass.xstart + lengthdir_x(52, image_angle + 270), obj_queen_wineglass.ystart + lengthdir_y(52, image_angle + 270), (obj_queen_wineglass.xstart - 3) + tri_x2 + lengthdir_x(bottomfill * 3, image_angle + 180), obj_queen_wineglass.ystart + 50 + tri_y2 + lengthdir_y(bottomfill * 3, image_angle + 150), (obj_queen_wineglass.xstart - tri_x3) + lengthdir_x(bottomfill * 3, image_angle + 0), obj_queen_wineglass.ystart + 52 + tri_y3 + lengthdir_y(bottomfill * 3, image_angle + 30), 0);
	draw_triangle(obj_queen_wineglass.xstart + lengthdir_x(52, image_angle + 270), obj_queen_wineglass.ystart + 2 + lengthdir_y(52, image_angle + 270), (obj_queen_wineglass.xstart - 3) + tri_x2 + lengthdir_x(bottomfill * 3, image_angle + 180), obj_queen_wineglass.ystart + 50 + tri_y2 + lengthdir_y(bottomfill * 3, image_angle + 150), (obj_queen_wineglass.xstart - tri_x3) + lengthdir_x(bottomfill * 3, image_angle + 0), obj_queen_wineglass.ystart + 52 + tri_y3 + lengthdir_y(bottomfill * 3, image_angle + 30), 0);
	if (fill >= 36)
	{
		if (image_angle >= -2 && image_angle <= 2)
			draw_rectangle(xtangle - (topfill * 2), starty - 35, xtangle + (topfill * 2), starty - fill, 0);
		if (image_angle <= -2)
		{
			var fill_a = lerp(36, fill, (image_angle * -1) / 33);
			var xx_bottom_right = abs(image_angle / 5);
			var xx_top_right = -5;
			if (fill > 40)
				xx_top_right = abs(image_angle) / 5;
			if (fill > 50)
				xx_top_right = abs(image_angle) / 3;
			if (fill > 57)
				xx_top_right = abs(image_angle) / 2.1;
			if (obj_queen_bulletcontroller.type == 2.1)
			{
				if (fill > 62)
					xx_top_right = abs(image_angle) * 1;
				if (fill > 65)
					xx_top_right = abs(image_angle) * 1.2;
				if (fill > 69)
					xx_top_right = abs(image_angle) * 1;
			}
			else
			{
				if (fill > 62)
					xx_top_right = abs(image_angle) * 0.8;
				if (fill > 65)
					xx_top_right = abs(image_angle) * 0.8;
				if (fill > 69)
					xx_top_right = abs(image_angle) * 0.8;
			}
			if (fill > 71)
				xx_top_right = abs(image_angle) * 1.1;
			if (fill > 75)
				xx_top_right = abs(image_angle) * 1.2;
			if (fill > 78)
				xx_top_right = abs(image_angle) * 1.3;
			if (fill > 81)
				xx_top_right = abs(image_angle) * 1.5;
			if (fill > 84)
				xx_top_right = abs(image_angle) * 1.6;
			var xx_top_left = 0;
			if (fill > 36)
				xx_top_left = abs(image_angle) / 2.3;
			if (fill > 55)
				xx_top_left = abs(image_angle) / 8.3;
			if (fill > 58)
				xx_top_left = abs(image_angle) * -0.24;
			if (fill > 69)
				xx_top_left = abs(image_angle) * -0.2;
			if (fill > 71)
				xx_top_left = abs(image_angle) * -0.1;
			if (fill > 82)
				xx_top_left = abs(image_angle) * 0.1;
			var xx_bottom_left = 0;
			if (fill > 36)
				xx_bottom_left = abs(image_angle) / 8;
			if (fill > 81)
				xx_bottom_left = abs(image_angle) / 8;
			draw_primitive_begin(pr_trianglelist);
			draw_vertex((obj_queen_wineglass.xstart - xx_bottom_left) + lengthdir_x(topfill * 2, image_angle + 180), obj_queen_wineglass.ystart + 53 + 2 + lengthdir_y(topfill * 2, image_angle + 150));
			draw_vertex((obj_queen_wineglass.xstart - xx_bottom_right) + lengthdir_x(topfill * 2, image_angle + 0), obj_queen_wineglass.ystart + 53 + 2 + lengthdir_y(topfill * 2, image_angle + 30));
			draw_vertex((obj_queen_wineglass.xstart - xx_top_right) + lengthdir_x(fill_a * 1.97, image_angle + 0), (obj_queen_wineglass.ystart + 52) - fill);
			draw_primitive_end();
			draw_primitive_begin(pr_trianglelist);
			draw_vertex((obj_queen_wineglass.xstart - xx_bottom_left) + lengthdir_x(topfill * 2, image_angle + 180), obj_queen_wineglass.ystart + 53 + 2 + lengthdir_y(topfill * 2, image_angle + 150));
			draw_vertex(obj_queen_wineglass.xstart + xx_top_left + lengthdir_x(topfill * 2, image_angle + 180), (obj_queen_wineglass.ystart + 52) - fill);
			draw_vertex((obj_queen_wineglass.xstart - xx_top_right) + lengthdir_x(fill_a * 1.97, image_angle + 0), (obj_queen_wineglass.ystart + 52) - fill);
			draw_primitive_end();
		}
		if (image_angle >= 2)
		{
			var fill_a = lerp(topfill, fill, image_angle / 33);
			var xx_bottom_left = abs(image_angle / 2.3);
			var xx_top_left = 0;
			if (fill > 40)
				xx_top_left = abs(image_angle) / 5.6;
			if (fill > 47)
				xx_top_left = abs(image_angle) / 2.6;
			if (fill > 50)
				xx_top_left = abs(image_angle) / 1.8;
			if (fill > 52)
				xx_top_left = abs(image_angle) / 1.3;
			if (fill > 57)
				xx_top_left = abs(image_angle) / 1.3;
			if (fill > 63)
				xx_top_left = abs(image_angle) * 0.99;
			if (fill > 66)
				xx_top_left = abs(image_angle) * 1.09;
			if (fill > 69)
				xx_top_left = abs(image_angle) * 1.2;
			if (fill > 71)
				xx_top_left = abs(image_angle) * 1.35;
			if (fill > 74)
				xx_top_left = abs(image_angle) * 1.49;
			if (fill > 78)
				xx_top_left = abs(image_angle) * 1.65;
			if (fill > 81)
				xx_top_left = abs(image_angle) * 1.76;
			if (fill > 84)
				xx_top_left = abs(image_angle) * 1.83;
			if (fill > 86.5)
				xx_top_left = abs(image_angle) * 1.96;
			var xx_top_right = 0;
			if (fill > 36)
				xx_top_right = abs(image_angle) / 0.3;
			if (fill > 40)
				xx_top_right = abs(image_angle) / 2.3;
			if (fill > 50)
				xx_top_right = 0;
			if (fill > 54)
				xx_top_right = abs(image_angle) / 40;
			if (fill > 60)
				xx_top_right = abs(image_angle) * -0.4;
			if (fill > 69)
				xx_top_right = abs(image_angle) * -0.4;
			if (fill > 71)
				xx_top_right = abs(image_angle) * -0.2;
			if (fill > 80)
				xx_top_right = abs(image_angle) * 0.15;
			if (fill > 84)
				xx_top_right = abs(image_angle) * 0.15;
			var e = 0;
			if (image_angle >= 2 && image_angle < 7)
				e = 4;
			var xx_bottom_right = 0;
			if (fill > 36)
				xx_bottom_right = abs(image_angle) / 2;
			if (fill > 54)
				xx_bottom_right = abs(image_angle) / 4;
			if (fill > 60)
				xx_bottom_right = (abs(image_angle) / 4) + e;
			if (fill > 71)
				xx_bottom_right = (abs(image_angle) / 8) + e;
			if (fill > 80)
				xx_bottom_right = 0;
			var yy_bottom_right = 0;
			if (fill > 80)
				yy_bottom_right = -3;
			draw_primitive_begin(pr_trianglelist);
			draw_vertex((obj_queen_wineglass.xstart - 1) + xx_bottom_left + lengthdir_x(topfill * 2, image_angle + 180), obj_queen_wineglass.ystart + 53 + 3 + lengthdir_y(topfill * 2, image_angle + 150));
			draw_vertex((obj_queen_wineglass.xstart - xx_bottom_right) + lengthdir_x(topfill * 2.2, image_angle + 0), obj_queen_wineglass.ystart + 54 + yy_bottom_right + 1 + lengthdir_y(topfill * 2, image_angle + 30));
			draw_vertex((obj_queen_wineglass.xstart - xx_top_right) + lengthdir_x(topfill * 2, image_angle + 0), (obj_queen_wineglass.ystart + 52) - fill);
			draw_primitive_end();
			draw_primitive_begin(pr_trianglelist);
			draw_vertex((obj_queen_wineglass.xstart - 1) + xx_bottom_left + lengthdir_x(topfill * 2, image_angle + 180), obj_queen_wineglass.ystart + 53 + 3 + lengthdir_y(topfill * 2, image_angle + 150));
			draw_vertex(obj_queen_wineglass.xstart + xx_top_left + lengthdir_x(fill_a * 2, image_angle + 180), (obj_queen_wineglass.ystart + 52) - fill);
			draw_vertex((obj_queen_wineglass.xstart - xx_top_right) + lengthdir_x(topfill * 2, image_angle + 0), (obj_queen_wineglass.ystart + 52) - fill);
			draw_primitive_end();
		}
	}
	if (fill > 88 && global.turntimer > 2)
		global.turntimer = 2;
	if (fill < 90 && prefill > 0)
	{
		prefill--;
		fill++;
		if (fill == 1)
		{
			hurtbox.damage = damage;
			hurtbox.target = target;
		}
		if (fill < 36)
			fill += (1 - (bottomfill / 36));
	}
	if (obj_queen_enemy.difficulty == 1)
	{
		if (fill > 48)
			draw_sprite_ext(spr_queen_wine_box_fakeittillyoumakeit, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	}
	if (obj_queen_enemy.difficulty == 2)
	{
		if (fill > 52)
			draw_sprite_ext(spr_queen_wine_box_fakeittillyoumakeit, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
		if (fill > 76)
			draw_sprite_ext(spr_queen_wine_box_fakeittillyoumakeit, 1, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	}
	draw_self();
}
