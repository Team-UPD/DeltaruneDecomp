shieldsiner++;
y += (sin(shieldsiner / 6) * 0.5);
if ((obj_queen_enemy.shieldhp / obj_queen_enemy.shieldmaxhp) <= (obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp))
{
	var a = obj_queen_enemy.shieldhp / obj_queen_enemy.shieldmaxhp;
	if (shieldsize == 5)
	{
		if (a < 0.8)
			shieldpiece_alpha[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[0] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_alpha[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[1] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_alpha[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[2] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_alpha[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[3] = spr_queenshield_pieces;
	}
	if (shieldsize == 10)
	{
		if (a < 0.9)
			shieldpiece_alpha[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[0] = spr_queenshield_pieces;
		if (a < 0.8)
			shieldpiece_alpha[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[1] = spr_queenshield_pieces;
		if (a < 0.7)
			shieldpiece_alpha[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[2] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_alpha[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[3] = spr_queenshield_pieces;
		if (a < 0.5)
			shieldpiece_alpha[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[4] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_alpha[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[5] = spr_queenshield_pieces;
		if (a < 0.3)
			shieldpiece_alpha[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[6] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_alpha[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[7] = spr_queenshield_pieces;
		if (a < 0.1)
			shieldpiece_alpha[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[8] = spr_queenshield_pieces;
	}
	if (shieldsize == 15)
	{
		if (a < 0.9333333333333333)
			shieldpiece_alpha[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[0] = spr_queenshield_pieces;
		if (a < 0.8666666666666667)
			shieldpiece_alpha[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[1] = spr_queenshield_pieces;
		if (a < 0.8)
			shieldpiece_alpha[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[2] = spr_queenshield_pieces;
		if (a < 0.7333333333333333)
			shieldpiece_alpha[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[3] = spr_queenshield_pieces;
		if (a < (2/3))
			shieldpiece_alpha[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[4] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_alpha[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[5] = spr_queenshield_pieces;
		if (a < 0.5333333333333333)
			shieldpiece_alpha[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[6] = spr_queenshield_pieces;
		if (a < 0.4666666666666667)
			shieldpiece_alpha[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[7] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_alpha[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[8] = spr_queenshield_pieces;
		if (a < (1/3))
			shieldpiece_alpha[9] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[9] = spr_queenshield_pieces;
		if (a < 0.26666666666666666)
			shieldpiece_alpha[10] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[10] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_alpha[11] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[11] = spr_queenshield_pieces;
		if (a < 0.13333333333333333)
			shieldpiece_alpha[12] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[12] = spr_queenshield_pieces;
		if (a < (1/15))
			shieldpiece_alpha[13] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[13] = spr_queenshield_pieces;
	}
}
else
{
	var a = obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp;
	if (shieldsize == 5)
	{
		if (a < 0.8)
			shieldpiece_alpha[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[0] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_alpha[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[1] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_alpha[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[2] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_alpha[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[3] = spr_queenshield_pieces;
	}
	if (shieldsize == 10)
	{
		if (a < 0.9)
			shieldpiece_alpha[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[0] = spr_queenshield_pieces;
		if (a < 0.8)
			shieldpiece_alpha[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[1] = spr_queenshield_pieces;
		if (a < 0.7)
			shieldpiece_alpha[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[2] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_alpha[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[3] = spr_queenshield_pieces;
		if (a < 0.5)
			shieldpiece_alpha[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[4] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_alpha[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[5] = spr_queenshield_pieces;
		if (a < 0.3)
			shieldpiece_alpha[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[6] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_alpha[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[7] = spr_queenshield_pieces;
		if (a < 0.1)
			shieldpiece_alpha[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[8] = spr_queenshield_pieces;
	}
	if (shieldsize == 15)
	{
		if (a < 0.9333333333333333)
			shieldpiece_alpha[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[0] = spr_queenshield_pieces;
		if (a < 0.8666666666666667)
			shieldpiece_alpha[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[1] = spr_queenshield_pieces;
		if (a < 0.8)
			shieldpiece_alpha[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[2] = spr_queenshield_pieces;
		if (a < 0.7333333333333333)
			shieldpiece_alpha[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[3] = spr_queenshield_pieces;
		if (a < (2/3))
			shieldpiece_alpha[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[4] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_alpha[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[5] = spr_queenshield_pieces;
		if (a < 0.5333333333333333)
			shieldpiece_alpha[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[6] = spr_queenshield_pieces;
		if (a < 0.4666666666666667)
			shieldpiece_alpha[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[7] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_alpha[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[8] = spr_queenshield_pieces;
		if (a < (1/3))
			shieldpiece_alpha[9] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[9] = spr_queenshield_pieces;
		if (a < 0.26666666666666666)
			shieldpiece_alpha[10] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[10] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_alpha[11] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[11] = spr_queenshield_pieces;
		if (a < 0.13333333333333333)
			shieldpiece_alpha[12] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[12] = spr_queenshield_pieces;
		if (a < (1/15))
			shieldpiece_alpha[13] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_alpha[13] = spr_queenshield_pieces;
	}
}
draw_set_alpha(shieldalpha * 0.8);
draw_set_color(c_lime);
draw_triangle(queenhandx, queenhandy, x + 81, shieldpiece_y[0] + 2, x + 81, shieldpiece_y[shieldsize - 1] + y + 33, true);
draw_triangle_colour(queenhandx, queenhandy, x + 81, shieldpiece_y[0] + 2, x + 81, shieldpiece_y[shieldsize - 1] + y + 33, 0, 65280, 65280, false);
for (i = 0; i < 10; i++)
{
	shieldpiece_x[i] = x + 40;
	draw_sprite_ext(spr_queenshield_pieces, shieldpiece_image_index[i], shieldpiece_x[i], shieldpiece_y[i], shieldpiece_xscale[i], shieldpiece_yscale[i] + y, 0, c_white, shieldpiece_alpha[i]);
	repeat (5)
	{
		if (shieldpiece_y[i] < shieldpiece_y_origin[i])
			shieldpiece_y[i]++;
		if (shieldpiece_y[i] > shieldpiece_y_origin[i])
			shieldpiece_y[i]--;
	}
	if (obj_queen_enemy.shieldhp <= 5 || obj_queen_enemy.shieldacthp < 1)
	{
		imabouttobreak_siner += 0.5;
		imabouttobreak_alpha = 0.1 + (sin(imabouttobreak_siner) / 6);
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(spr_queenshield_pieces, shieldpiece_image_index[i], shieldpiece_x[i], shieldpiece_y[i], shieldpiece_xscale[i], shieldpiece_yscale[i] + y, 0, c_white, shieldpiece_alpha[i]);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (appearcon == 1)
{
	if (shieldsize == 5)
	{
		shieldpiece_y_origin[0] = 95;
		shieldpiece_y_origin[1] = 115;
		shieldpiece_y_origin[2] = 135;
		shieldpiece_y_origin[3] = 155;
		shieldpiece_y_origin[4] = 175;
	}
	if (shieldsize == 10)
	{
		shieldpiece_y_origin[0] = 50;
		shieldpiece_y_origin[1] = 75;
		shieldpiece_y_origin[2] = 95;
		shieldpiece_y_origin[3] = 115;
		shieldpiece_y_origin[4] = 135;
		shieldpiece_y_origin[5] = 155;
		shieldpiece_y_origin[6] = 175;
		shieldpiece_y_origin[7] = 195;
		shieldpiece_y_origin[8] = 215;
		shieldpiece_y_origin[9] = 240;
	}
	if (shieldsize == 15)
	{
		shieldpiece_y_origin[0] = 10;
		shieldpiece_y_origin[1] = 35;
		shieldpiece_y_origin[2] = 55;
		shieldpiece_y_origin[3] = 75;
		shieldpiece_y_origin[4] = 95;
		shieldpiece_y_origin[5] = 115;
		shieldpiece_y_origin[6] = 135;
		shieldpiece_y_origin[7] = 155;
		shieldpiece_y_origin[8] = 175;
		shieldpiece_y_origin[9] = 195;
		shieldpiece_y_origin[10] = 215;
		shieldpiece_y_origin[11] = 235;
		shieldpiece_y_origin[12] = 255;
		shieldpiece_y_origin[13] = 275;
		shieldpiece_y_origin[14] = 300;
	}
	appearcon = 0;
}
if (appearcon == 2)
{
	for (i = 0; i < 14; i++)
		shieldpiece_y[i] = y + 145;
	appearcon = 0;
}
if (shieldhurt != 2)
	shieldalpha = 0.7 + (sin(shieldsiner / 7) * 0.05);
if (shieldsize == 5)
{
	shieldpiece_image_index[0] = 0;
	shieldpiece_image_index[1] = 1;
	shieldpiece_image_index[2] = 1;
	shieldpiece_image_index[3] = 1;
	shieldpiece_image_index[4] = 2;
}
if (shieldsize == 10)
{
	shieldpiece_image_index[0] = 0;
	shieldpiece_image_index[1] = 1;
	shieldpiece_image_index[2] = 1;
	shieldpiece_image_index[3] = 1;
	shieldpiece_image_index[4] = 1;
	shieldpiece_image_index[5] = 1;
	shieldpiece_image_index[6] = 1;
	shieldpiece_image_index[7] = 1;
	shieldpiece_image_index[8] = 1;
	shieldpiece_image_index[9] = 2;
}
if (shieldsize == 15)
{
	shieldpiece_image_index[0] = 0;
	shieldpiece_image_index[1] = 1;
	shieldpiece_image_index[2] = 1;
	shieldpiece_image_index[3] = 1;
	shieldpiece_image_index[4] = 1;
	shieldpiece_image_index[5] = 1;
	shieldpiece_image_index[6] = 1;
	shieldpiece_image_index[7] = 1;
	shieldpiece_image_index[8] = 1;
	shieldpiece_image_index[9] = 1;
	shieldpiece_image_index[10] = 1;
	shieldpiece_image_index[11] = 1;
	shieldpiece_image_index[12] = 1;
	shieldpiece_image_index[13] = 1;
	shieldpiece_image_index[14] = 2;
}
var shieldindex = 0;
var hptype = 0;
var wineheight;
if ((obj_queen_enemy.shieldhp / obj_queen_enemy.shieldmaxhp) <= (obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp))
{
	hptype = 0;
	repeat (10)
	{
		if (obj_queen_enemy.shieldhp < shieldhpgradual)
			shieldhpgradual -= 1;
	}
	repeat (obj_queen_enemy.phase - 1)
	{
		repeat (10)
		{
			if (obj_queen_enemy.shieldhp > shieldhpgradual)
				shieldhpgradual += 1;
		}
	}
	wineheight = lerp(shieldheight, 0, shieldhpgradual / obj_queen_enemy.shieldmaxhp);
}
else
{
	hptype = 1;
	if (shieldhpgradual > obj_queen_enemy.shieldactmaxhp)
		shieldhpgradual = obj_queen_enemy.shieldactmaxhp;
	repeat (10)
	{
		if (obj_queen_enemy.shieldacthp < shieldhpgradual)
			shieldhpgradual -= 0.01;
	}
	repeat (obj_queen_enemy.phase - 1)
	{
		repeat (10)
		{
			if (obj_queen_enemy.shieldacthp > shieldhpgradual)
				shieldhpgradual += 0.01;
		}
	}
	wineheight = lerp(shieldheight, 0, shieldhpgradual / obj_queen_enemy.shieldactmaxhp);
}
if (shaketimer > 0)
{
	x = (xstart - shaketimer) + (shaketimer * 2);
	y = (ystart - shaketimer) + (shaketimer * 2);
	shaketimer--;
}
if (shieldhurt == 1)
{
	shieldindex = 2;
	shieldx = (random(shieldhurttimer) - random(shieldhurttimer)) * 2;
	shieldhurttimer--;
	if (shieldhurttimer <= 0)
		shieldhurt = 0;
}
if (shieldhurt == 2)
{
	event_user(1);
	instance_destroy();
}
if (appearcon != 0)
{
	draw_sprite_ext(sprite_index, 1, x + 7, y + 3, image_xscale, image_yscale, 0, c_white, shieldalpha);
}
else
{
	draw_sprite_part_ext(sprite_index, shieldindex, 0, wineheight, sprite_width, shieldheight - wineheight, x + shieldx, y + (wineheight * image_yscale), image_xscale, image_yscale, c_white, shieldalpha);
	draw_sprite_part_ext(sprite_index, shieldindex + 1, 0, 0, sprite_width, wineheight, x + shieldx, y, image_xscale, image_yscale, c_white, shieldalpha);
	if ((shieldhpgradual <= 5 && hptype == 0) || (shieldhpgradual < 1 && hptype == 1))
	{
		imabouttobreak_siner += 0.5;
		imabouttobreak_alpha = 0.1 + (sin(imabouttobreak_siner) / 6);
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_part_ext(sprite_index, shieldindex, 0, wineheight, sprite_width, shieldheight - wineheight, x + shieldx, y + (wineheight * image_yscale), image_xscale, image_yscale, c_white, imabouttobreak_alpha);
		draw_sprite_part_ext(sprite_index, shieldindex + 1, 0, 0, sprite_width, wineheight, x + shieldx, y, image_xscale, image_yscale, c_white, imabouttobreak_alpha);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
