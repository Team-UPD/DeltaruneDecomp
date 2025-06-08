depth = obj_queen_enemy.depth - 1;
shieldsiner++;
y += (sin(shieldsiner / 6) * 0.5);
if (shaketimer > 0)
{
	x = (xstart - shaketimer) + (shaketimer * 2);
	y = (ystart - shaketimer) + (shaketimer * 2);
	shaketimer--;
}
if (hurtsfxcon == 1)
{
	hurtsfxtimer++;
	if (!audio_is_playing(snd_swallow))
		snd_play(snd_swallow);
	if (hurtsfxtimer == 10)
	{
		hurtsfxcon = 0;
		hurtsfxtimer = 0;
	}
}
if ((obj_queen_enemy.shieldhp / obj_queen_enemy.shieldmaxhp) <= (obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp))
{
	var a = obj_queen_enemy.shieldhp / obj_queen_enemy.shieldmaxhp;
	if (shieldsize == 7)
	{
		if (a < 0.8571428571428571)
			shieldpiece_sprite_index[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[0] = spr_queenshield_pieces;
		if (a < 0.7142857142857143)
			shieldpiece_sprite_index[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[1] = spr_queenshield_pieces;
		if (a < 0.5714285714285714)
			shieldpiece_sprite_index[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[2] = spr_queenshield_pieces;
		if (a < 0.42857142857142855)
			shieldpiece_sprite_index[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[3] = spr_queenshield_pieces;
		if (a < 0.2857142857142857)
			shieldpiece_sprite_index[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[4] = spr_queenshield_pieces;
		if (a < 0.14285714285714285)
			shieldpiece_sprite_index[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[5] = spr_queenshield_pieces;
		if (a <= 0)
			shieldpiece_sprite_index[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[6] = spr_queenshield_pieces;
	}
	if (shieldsize == 10)
	{
		if (a < 0.9)
			shieldpiece_sprite_index[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[0] = spr_queenshield_pieces;
		if (a < 0.8)
			shieldpiece_sprite_index[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[1] = spr_queenshield_pieces;
		if (a < 0.7)
			shieldpiece_sprite_index[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[2] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_sprite_index[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[3] = spr_queenshield_pieces;
		if (a < 0.5)
			shieldpiece_sprite_index[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[4] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_sprite_index[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[5] = spr_queenshield_pieces;
		if (a < 0.3)
			shieldpiece_sprite_index[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[6] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_sprite_index[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[7] = spr_queenshield_pieces;
		if (a < 0.1)
			shieldpiece_sprite_index[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[8] = spr_queenshield_pieces;
		if (a <= 0)
			shieldpiece_sprite_index[9] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[9] = spr_queenshield_pieces;
	}
	if (shieldsize == 12)
	{
		if (a < 0.9166666666666666)
			shieldpiece_sprite_index[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[0] = spr_queenshield_pieces;
		if (a < 0.8333333333333334)
			shieldpiece_sprite_index[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[1] = spr_queenshield_pieces;
		if (a < 0.75)
			shieldpiece_sprite_index[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[2] = spr_queenshield_pieces;
		if (a < (2/3))
			shieldpiece_sprite_index[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[3] = spr_queenshield_pieces;
		if (a < 0.5833333333333334)
			shieldpiece_sprite_index[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[4] = spr_queenshield_pieces;
		if (a < 0.5)
			shieldpiece_sprite_index[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[5] = spr_queenshield_pieces;
		if (a < 0.4166666666666667)
			shieldpiece_sprite_index[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[6] = spr_queenshield_pieces;
		if (a < (1/3))
			shieldpiece_sprite_index[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[7] = spr_queenshield_pieces;
		if (a < 0.25)
			shieldpiece_sprite_index[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[8] = spr_queenshield_pieces;
		if (a < 0.16666666666666666)
			shieldpiece_sprite_index[9] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[9] = spr_queenshield_pieces;
		if (a < 0.08333333333333333)
			shieldpiece_sprite_index[10] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[10] = spr_queenshield_pieces;
		if (a <= 0)
			shieldpiece_sprite_index[11] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[11] = spr_queenshield_pieces;
	}
}
else
{
	var a = obj_queen_enemy.shieldacthp / obj_queen_enemy.shieldactmaxhp;
	if (shieldsize == 7)
	{
		if (a < 0.8571428571428571)
			shieldpiece_sprite_index[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[0] = spr_queenshield_pieces;
		if (a < 0.7142857142857143)
			shieldpiece_sprite_index[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[1] = spr_queenshield_pieces;
		if (a < 0.5714285714285714)
			shieldpiece_sprite_index[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[2] = spr_queenshield_pieces;
		if (a < 0.42857142857142855)
			shieldpiece_sprite_index[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[3] = spr_queenshield_pieces;
		if (a < 0.2857142857142857)
			shieldpiece_sprite_index[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[4] = spr_queenshield_pieces;
		if (a < 0.14285714285714285)
			shieldpiece_sprite_index[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[5] = spr_queenshield_pieces;
		if (a <= 0)
			shieldpiece_sprite_index[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[6] = spr_queenshield_pieces;
	}
	if (shieldsize == 10)
	{
		if (a < 0.9)
			shieldpiece_sprite_index[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[0] = spr_queenshield_pieces;
		if (a < 0.8)
			shieldpiece_sprite_index[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[1] = spr_queenshield_pieces;
		if (a < 0.7)
			shieldpiece_sprite_index[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[2] = spr_queenshield_pieces;
		if (a < 0.6)
			shieldpiece_sprite_index[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[3] = spr_queenshield_pieces;
		if (a < 0.5)
			shieldpiece_sprite_index[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[4] = spr_queenshield_pieces;
		if (a < 0.4)
			shieldpiece_sprite_index[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[5] = spr_queenshield_pieces;
		if (a < 0.3)
			shieldpiece_sprite_index[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[6] = spr_queenshield_pieces;
		if (a < 0.2)
			shieldpiece_sprite_index[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[7] = spr_queenshield_pieces;
		if (a < 0.1)
			shieldpiece_sprite_index[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[8] = spr_queenshield_pieces;
		if (a <= 0)
			shieldpiece_sprite_index[9] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[9] = spr_queenshield_pieces;
	}
	if (shieldsize == 12)
	{
		if (a < 0.9166666666666666)
			shieldpiece_sprite_index[0] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[0] = spr_queenshield_pieces;
		if (a < 0.8333333333333334)
			shieldpiece_sprite_index[1] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[1] = spr_queenshield_pieces;
		if (a < 0.75)
			shieldpiece_sprite_index[2] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[2] = spr_queenshield_pieces;
		if (a < (2/3))
			shieldpiece_sprite_index[3] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[3] = spr_queenshield_pieces;
		if (a < 0.5833333333333334)
			shieldpiece_sprite_index[4] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[4] = spr_queenshield_pieces;
		if (a < 0.5)
			shieldpiece_sprite_index[5] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[5] = spr_queenshield_pieces;
		if (a < 0.4166666666666667)
			shieldpiece_sprite_index[6] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[6] = spr_queenshield_pieces;
		if (a < (1/3))
			shieldpiece_sprite_index[7] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[7] = spr_queenshield_pieces;
		if (a < 0.25)
			shieldpiece_sprite_index[8] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[8] = spr_queenshield_pieces;
		if (a < 0.16666666666666666)
			shieldpiece_sprite_index[9] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[9] = spr_queenshield_pieces;
		if (a < 0.08333333333333333)
			shieldpiece_sprite_index[10] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[10] = spr_queenshield_pieces;
		if (a <= 0)
			shieldpiece_sprite_index[11] = spr_queenshield_pieces_hurt;
		else
			shieldpiece_sprite_index[11] = spr_queenshield_pieces;
	}
}
if (shieldpiece_yscale[0] > 0.1)
{
	if (movecon == 15 && shieldalpha > 0)
		shieldalpha -= 0.1;
	if (movecon != 15 && shieldalpha < 1)
		shieldalpha += 0.1;
	var x1, y1, x2, y2;
	if (obj_queen_enemy.sprite_index == spr_queen_chair_1_battle || obj_queen_enemy.sprite_index == spr_queen_chair_1_old)
	{
		x1 = 10;
		y1 = 5;
		x2 = 10;
		y2 = 22;
	}
	else
	{
		x1 = 17;
		y1 = 23;
		x2 = 17;
		y2 = 0;
	}
	if (appearcon == 3)
	{
		var a = (16 - (16 * (shieldpiece_yscale[0] / 2))) * 2;
		draw_set_alpha(shieldalpha * 0.8);
		draw_set_color(c_lime);
		draw_line(queenhandx + x1, queenhandy - y1, x + 14, (shieldpiece_y[0] + y) - 48);
		draw_line(queenhandx + x2, queenhandy + y2, x + 81, (shieldpiece_y[shieldsize - 1] + y + 33) - a);
	}
	else
	{
		draw_set_alpha(shieldalpha * 0.8);
		draw_set_color(c_lime);
		draw_line(queenhandx + x1, queenhandy - y1, x + 14, (shieldpiece_y[0] + y) - 48);
		draw_line(queenhandx + x2, queenhandy + y2, x + 81, shieldpiece_y[shieldsize - 1] + y + 33);
	}
}
if (shieldhurt == 0)
{
	for (i = 0; i < 14; i++)
	{
		var ii = depthorder[13 - i];
		draw_sprite_ext(shieldpiece_sprite_index[ii], shieldpiece_image_index[ii], shieldpiece_x[ii], shieldpiece_y[ii] + y, shieldpiece_xscale[ii], shieldpiece_yscale[ii], 0, c_white, shieldpiece_alpha[ii]);
		if (shieldpiece_fadecon[ii] == 1)
		{
			if (shieldpiece_fadetimer[ii] < 10)
				shieldpiece_fadetimer[ii]++;
			draw_sprite_ext(spr_queenshield_pieces_hurt, shieldpiece_image_index[ii], shieldpiece_x[ii], shieldpiece_y[ii] + y, shieldpiece_xscale[ii], shieldpiece_yscale[ii], 0, c_white, shieldpiece_fadetimer[ii] / 10);
		}
		if (shieldpiece_fadecon[ii] == 2)
		{
			shieldpiece_fadetimer[ii]--;
			if (shieldpiece_fadetimer[ii] == 0)
				shieldpiece_fadecon[ii] = 0;
			draw_sprite_ext(spr_queenshield_pieces_hurt, shieldpiece_image_index[ii], shieldpiece_x[ii], shieldpiece_y[ii] + y, shieldpiece_xscale[ii], shieldpiece_yscale[ii], 0, c_white, shieldpiece_fadetimer[ii] / 10);
		}
		if (obj_queen_enemy.shieldhp <= 5 || obj_queen_enemy.shieldacthp < 1)
		{
			imabouttobreak_siner += 0.5;
			imabouttobreak_alpha = 0.1 + (sin(imabouttobreak_siner) / 6);
			d3d_set_fog(true, c_white, 0, 1);
			if (shieldpiece_sprite_index[ii] != spr_nothing)
				draw_sprite_ext(spr_queenshield_pieces, shieldpiece_image_index[ii], shieldpiece_x[ii], shieldpiece_y[ii] + y, shieldpiece_xscale[ii], shieldpiece_yscale[ii], 0, c_white, imabouttobreak_alpha);
			d3d_set_fog(false, c_black, 0, 0);
		}
	}
}
repeat (3)
{
	if (appearcon == 1)
	{
		if (shieldsize == 7)
		{
			shieldpiece_y_origin[0] = 70;
			shieldpiece_y_origin[1] = 95;
			shieldpiece_y_origin[2] = 115;
			shieldpiece_y_origin[3] = 135;
			shieldpiece_y_origin[4] = 155;
			shieldpiece_y_origin[5] = 175;
			shieldpiece_y_origin[6] = 200;
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
		if (shieldsize == 12)
		{
			shieldpiece_y_origin[0] = 20;
			shieldpiece_y_origin[1] = 45;
			shieldpiece_y_origin[2] = 65;
			shieldpiece_y_origin[3] = 85;
			shieldpiece_y_origin[4] = 105;
			shieldpiece_y_origin[5] = 125;
			shieldpiece_y_origin[6] = 145;
			shieldpiece_y_origin[7] = 165;
			shieldpiece_y_origin[8] = 185;
			shieldpiece_y_origin[9] = 205;
			shieldpiece_y_origin[10] = 225;
			shieldpiece_y_origin[11] = 250;
		}
		for (i = 0; i < 14; i++)
		{
			shieldpiece_yscale[i] = 2;
			shieldpiece_alpha[i] = 0;
		}
		appearcon = 0;
		movetype = 0;
		movetimer = 0;
		movecon = 1;
	}
	if (movecon == 1)
	{
		movecon = 2;
		shieldpiece_fadecon[moveorder[movepiece]] = 1;
	}
	if (movecon == 2)
	{
		movetimer += 2;
		shieldpiece_x[moveorder[movepiece]] = lerp_ease_out(shieldpiece_x_origin[moveorder[movepiece]], shieldpiece_x_origin[moveorder[movepiece]] + 15, movetimer / 10, 2);
		shieldpiece_alpha[moveorder[movepiece]] = lerp(0, 1, movetimer / 10);
		if (movetimer == 10)
		{
			movetimer = 0;
			movecon = 3;
		}
	}
	if (movecon == 3)
	{
		movetimer += 2;
		shieldpiece_y[moveorder[movepiece]] = lerp(shieldpiece_y[moveorder[movepiece]], shieldpiece_y_origin[moveorder[movepiece]], movetimer / 10);
		if (movetimer == 10)
		{
			movetimer = 0;
			movecon = 4;
			shieldpiece_fadecon[moveorder[movepiece]] = 2;
		}
		event_user(2);
	}
	if (movecon == 4)
	{
		movetimer += 2;
		shieldpiece_x[moveorder[movepiece]] = lerp_ease_out(shieldpiece_x_origin[moveorder[movepiece]] + 15, shieldpiece_x_origin[moveorder[movepiece]], movetimer / 10, 1);
		if (movetimer == 10)
		{
			movetimer = 0;
			movecon = 5;
		}
	}
	if (movecon == 5)
	{
		if (movepiece == (shieldsize - 1))
		{
			movecon = 0;
			movepiece = 0;
		}
		else
		{
			movepiece++;
			movecon = 1;
		}
	}
}
repeat (5)
{
	if (appearcon == 2)
	{
		appearcon = 0;
		movetype = 0;
		movetimer = 0;
		movecon = 10;
	}
	if (movecon == 10)
	{
		movecon = 11;
		shieldpiece_fadecon[moveorder[movepiece]] = 1;
	}
	if (movecon == 11)
	{
		movetimer += 2;
		shieldpiece_x[moveorder[movepiece]] = lerp_ease_out(shieldpiece_x_origin[moveorder[movepiece]], shieldpiece_x_origin[moveorder[movepiece]] + 15, movetimer / 10, 1);
		if (movetimer == 10)
		{
			movetimer = 0;
			movecon = 12;
		}
	}
	if (movecon == 12)
	{
		movetimer += 2;
		shieldpiece_y[moveorder[movepiece]] = lerp(shieldpiece_y_origin[moveorder[movepiece]], ystart + 135, movetimer / 10);
		if (movetimer == 10)
		{
			movetimer = 0;
			movecon = 13;
			shieldpiece_fadecon[moveorder[movepiece]] = 2;
		}
		event_user(2);
	}
	if (movecon == 13)
	{
		movetimer += 2;
		shieldpiece_x[moveorder[movepiece]] = lerp_ease_out(shieldpiece_x_origin[moveorder[movepiece]] + 15, shieldpiece_x_origin[moveorder[movepiece]], movetimer / 10, 2);
		if (movetimer == 10)
		{
			movetimer = 0;
			movecon = 14;
		}
	}
	if (movecon == 14)
	{
		if (movepiece == (shieldsize - 1))
		{
			movecon = 15;
			movepiece = 0;
		}
		else
		{
			movepiece++;
			movecon = 10;
		}
	}
	if (movecon == 15)
	{
		if (movetimer < 50)
			movetimer++;
		for (i = 0; i < 12; i++)
			shieldpiece_alpha[i] = lerp(1, 0, movetimer / 50);
	}
}
if (shieldhurt == 1)
{
	shieldx = (random(shieldhurttimer) - random(shieldhurttimer)) * 2;
	shieldhurttimer--;
	if (shieldhurttimer <= 0)
		shieldhurt = 0;
	for (i = 0; i < 12; i++)
	{
		shieldpiece_x[i] = ((x + 39) - 6) + irandom(12);
		draw_sprite_ext(shieldpiece_sprite_index[i], shieldpiece_image_index[i], shieldpiece_x[i], shieldpiece_y[i] + y, shieldpiece_xscale[i], shieldpiece_yscale[i], 0, c_white, shieldpiece_alpha[i]);
		if (shieldhurt == 0)
			shieldpiece_x[i] = x + 39;
	}
}
if (shieldhurt == 2)
{
	event_user(1);
	instance_destroy();
}
if (destroycon == 1)
{
	destroytimer++;
	if (destroytimer == 4)
	{
		anim = instance_create(x, y, obj_queen_vector_explosion);
		anim.image_xscale = 1;
		anim.image_yscale = 1;
	}
	if (destroytimer == 8)
	{
		anim = instance_create(x, y, obj_queen_vector_explosion);
		anim.image_xscale = 1;
		anim.image_yscale = 1;
	}
	if (destroytimer == 12)
		destroycon = 0;
}
draw_set_alpha(1);
