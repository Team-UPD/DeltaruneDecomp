if (state == 0)
{
	if (dancing)
	{
		siner += 0.16666666666666666;
		draw_monster_body_part(spr_hatguy_dance, siner, x, y);
		musicalnotetimer++;
		if (musicalnotetimer == 14)
		{
			musicalnotetimer = 0;
			anim = instance_create(((x + (sprite_width / 2)) - 20) + random(40), y, obj_afterimage);
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
