if (state == 0)
{
	if (dancing)
	{
		updatetimer++;
		if (updatetimer >= 2)
		{
			siner += 2;
			updatetimer = 0;
		}
		if (flash == 1)
			fsiner++;
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 8 - dance_index, x + (sin(siner / 4) * 3) + 2, y, 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 3 - dance_index, x + (sin(siner / 3) * 3), y + (cos(siner / 2) * 4), 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 4, x + (sin(siner / 2) * 2), y + (cos(siner / 2) * 3), 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 1, (x + (sin(siner / 2) * 6)) - 4, y + (cos(siner / 2) * 6), 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 5 + dance_index, x + (sin(siner / 3) * 3), y + (cos(siner / 2) * 4), 2, 2, 0, c_white, image_alpha);
		dancetimer++;
		if (sin(siner / 4) > 0)
			dance_index = 1;
		else
			dance_index = 0;
		musicalnotetimer++;
		if (musicalnotetimer == 14)
		{
			musicalnotetimer = 0;
			anim = instance_create(((x + (sprite_width / 2)) - 10) + random(40), y, obj_afterimage);
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
		siner += 0.16666666666666666;
		draw_monster_body_part(thissprite, siner, x, y);
	}
}
