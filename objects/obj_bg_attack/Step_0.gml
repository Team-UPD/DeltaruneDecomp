var end_timer = 121;
var obj_bgattack_piece_timer = 30;
if (variant == 1)
{
	end_timer = 121;
	obj_bgattack_piece_timer = 24;
}
if (variant == 2)
{
	end_timer = 127;
	if (state == 1)
		obj_bgattack_piece_timer = 5;
	if (state == 0)
		obj_bgattack_piece_timer = 24;
}
if (con == 0)
{
	timer += 1;
	if (timer >= obj_bgattack_piece_timer && timer_end_attack < end_timer)
	{
		if (state == 0)
			invis = choose(1, 2, 3);
		for (i = 0; i < 5; i += 1)
		{
			piece[i] = instance_create(280 + (20 * i), 120, obj_bgattack_piece);
			piece[i].xrange = 0.1 + (i * 0.2);
			piece[i].variant = variant;
			if (i == 0)
				piece[i].playsounds = 1;
			if (variant == 1)
				piece[i].gravity = 0.08;
			if (variant == 2)
				piece[i].gravity = 0.16;
			if (invis == i)
				piece[i].visible = 0;
		}
		if (invis == 2)
		{
			piece[2].visible = 1;
			piece[2].sprite_index = spr_bqueen_leggy_tall;
		}
		if (variant == 2)
		{
			if (state == 0)
			{
				state = 1;
				obj_bgattack_piece_timer = 5;
			}
			else if (state == 1)
			{
				state = 0;
				obj_bgattack_piece_timer = 24;
			}
		}
		timer = 0;
	}
	timer_end_attack++;
	if (timer_end_attack >= end_timer && !instance_exists(obj_bgattack_piece))
		instance_destroy();
}
