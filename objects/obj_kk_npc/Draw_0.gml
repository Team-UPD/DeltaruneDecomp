if (state == 0)
{
	if (dancing == 1)
	{
		if (flash == 1)
			fsiner++;
		updatetimer++;
		if (updatetimer >= 2)
		{
			siner += 2;
			updatetimer = 0;
		}
		draw_monster_body_part_ext(spr_kk_dance, dance_index, x + (sin(siner / 4) * 14), (y + (abs(cos(siner / 4)) * 4)) - 4, 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 3, x - (sin(siner / 4) * 8), y + (cos(siner / 2) * 3), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 2, x + (sin(siner / 3) * 3), y + (cos(siner / 2) * 4), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 1, x + (sin(siner / 2) * 2), y + (cos(siner / 2) * 6), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 6, x + (sin(siner / 2) * 2) + (sin(siner / 4) * 4), y + (cos(siner / 2) * 6), 2, 2, 0, c_white, 1);
		dancetimer++;
		if (sin(siner / 4) > 0)
			dance_index = 4;
		else
			dance_index = 5;
		musicalnotetimer++;
		if (musicalnotetimer == 14)
		{
			musicalnotetimer = 0;
			anim = instance_create(((x + (sprite_width / 2)) - 10) + random(40), y + 20, obj_afterimage);
			anim.sprite_index = spr_musicalbattlenote1;
			anim.depth = depth - 5;
			anim.image_xscale = 2;
			anim.image_yscale = 2;
			anim.direction = 270;
			anim.gravity = -0.2;
			anim.hspeed = random_range(0.1, 0.8) * choose(1, -1);
		}
	}
	else
	{
		if (flash == 1)
			fsiner++;
		timer += 2;
		if (timer > 8)
		{
			timerB += 1;
			timer = 0;
		}
		if (cos(timerB) > 0.8)
			down = 1;
		if (cos(timerB) < -0.8)
			down = 0;
		draw_monster_body_part_ext(sprite[0], 0, x, y, 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[1], 0, x, y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[2], 0, x, y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[3], down, x, y, 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[5], down, x, y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[6], 0, x + (-sin(timerB) * 4), y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[7], 0, x + (-sin(timerB) * 4), y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[8], 0, x + (-sin(timerB) * 2), y + cos(timerB), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[9], 0, x + (-sin(timerB * 1.2) * 6), y + (cos(timerB * 2) * 2), 2, 2, 0, c_white, 1);
	}
}
