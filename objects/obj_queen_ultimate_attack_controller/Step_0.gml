with (obj_dmgwriter)
	instance_destroy();
if (con == 0)
{
	timer++;
	if (timer < 20)
	{
		with (obj_heroparent)
		{
			if (image_alpha > 0)
				image_alpha -= 0.1;
		}
		with (obj_queen_enemy)
		{
			if (image_alpha > 0)
				image_alpha -= 0.1;
		}
	}
	if (timer < 45 && variant == 0)
		barprogress += 2;
	if (timer < 15 && variant == 1)
		barprogress += 6;
	if ((timer > 90 && variant == 0) || (timer > 30 && variant == 1))
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1)
{
	timer++;
	var xx = obj_growtangle.x;
	var yy = obj_growtangle.y;
	poppuptimer++;
	if (poppuptimer == 2)
	{
		var _error;
		if (poppupcount == 0)
			_error = instance_create(xx + 60, yy - 75, obj_queen_poppup_error);
		if (poppupcount == 1)
			_error = instance_create(xx + 20, yy - 40, obj_queen_poppup_error);
		if (poppupcount == 2)
			_error = instance_create(xx - 75, yy, obj_queen_poppup_error);
		if (poppupcount == 3)
			_error = instance_create(xx + 90, yy - 15, obj_queen_poppup_error);
		if (poppupcount == 4)
			_error = instance_create(xx + 45, yy - 5, obj_queen_poppup_error);
		if (poppupcount == 5)
			_error = instance_create(xx, yy + 13, obj_queen_poppup_error);
		if (poppupcount == 6)
			_error = instance_create(xx + 57, yy + 75, obj_queen_poppup_error);
		if (poppupcount == 7)
			_error = instance_create(xx + 15, yy + 99, obj_queen_poppup_error);
		if (poppupcount == 8)
			_error = instance_create(xx - 20, yy + 65, obj_queen_poppup_error);
		if (poppupcount == 9)
			_error = instance_create(xx - 50, yy + 85, obj_queen_poppup_error);
		if (poppupcount == 10)
			_error = instance_create(xx - 83, yy + 50, obj_queen_poppup_error);
		if (poppupcount == 11)
			_error = instance_create(xx - 25, yy - 85, obj_queen_poppup_error);
		if (poppupcount == 12)
			_error = instance_create(xx - 70, yy - 40, obj_queen_poppup_error);
		if (poppupcount == 13)
			_error = instance_create(xx + 90, yy + 30, obj_queen_poppup_error);
		if (poppupcount <= 13)
			_error.depth -= poppupcount;
		poppuptimer = 0;
		poppupcount++;
	}
	if (timer == 24)
	{
		d = instance_create(xx - 200, yy - 100, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 40)
	{
		d = instance_create(xx + 200, yy, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 56)
	{
		d = instance_create(xx - 190, yy + 100, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 72)
	{
		d = instance_create(xx + 200, yy - 100, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 88)
	{
		d = instance_create(xx - 200, yy, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 104)
	{
		d = instance_create(xx + 190, yy + 100, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 120)
	{
		d = instance_create(xx - 200, yy - 100, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 136)
	{
		d = instance_create(xx + 200, yy, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
	if (timer == 152)
	{
		d = instance_create(xx - 190, yy + 100, obj_queen_explodinghead_intro);
		d.ultimate = 1;
		d.first = 1;
	}
}
if (global.turntimer < 14)
{
	with (obj_queen_poppup_error)
		image_alpha -= 0.1;
	image_alpha -= 0.1;
}
if (global.turntimer < 11)
{
	with (obj_queen_poppup_error)
		image_alpha -= 0.1;
	image_alpha -= 0.1;
	with (obj_heroparent)
		image_alpha += 0.1;
	with (obj_queen_enemy)
		image_alpha += 0.1;
}
