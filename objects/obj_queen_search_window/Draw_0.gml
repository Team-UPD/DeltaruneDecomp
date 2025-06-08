if (state == 0)
{
	image_index = 11;
	timer += (timer + 1);
	image_xscale = lerp(4, 1, timer / 30);
	image_yscale = lerp(0, 4, timer / 30);
	if (timer >= 30)
	{
		state = 1;
		timer = 0;
	}
}
if (state == 1)
{
	timer += (timer + 1);
	image_xscale = lerp(1, 2, timer / 15);
	image_yscale = lerp(4, 2, timer / 15);
	if (timer >= 15)
	{
		timer = 0;
		state = quick ? 3 : 2;
		image_xscale = 2;
		image_yscale = 2;
	}
}
draw_self();
if (state == 2)
{
	var _count = clamp(floor(timer / 2), 0, string_length(targetstring));
	draw_set_color(#31D989);
	scr_84_set_draw_font("main");
	var _finalstring = string_copy(targetstring, 0, _count);
	if (_count == 0 || _count == string_length(targetstring))
	{
		if (donttypeanything == 0)
		{
			typetimer++;
			if (!firsttime)
				typetimer++;
			if ((typetimer % 40) < 20)
				_finalstring += "|";
			else
				_finalstring += " ";
		}
	}
	else
	{
		typetimer = 0;
	}
	var _halign = draw_get_halign();
	var _valign = draw_get_valign();
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x, y, _finalstring);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
	timer++;
	if (!firsttime && search > -1 && search < 3)
		timer++;
	if (timer >= (45 + spawndelay))
	{
		state = 3;
		timer = 0;
	}
}
if (state == 3)
{
	if (search == 1)
	{
		d = scr_bullet_create(x - (20 * sign(obj_growtangle.x - x)), y + 12, obj_queen_search_gun);
		d.parentwindow = self;
		state = 4;
	}
	else if (search == 2)
	{
		var maxchainlength = 135 + random(65);
		for (i = 0; i < 2; i++)
		{
			d = scr_bullet_create(x, y, obj_queen_search_flail);
			d.maxchainlength = maxchainlength;
			d.parentwindow = self;
			d.direction += i * 180;
		}
		state = 4;
	}
	else if (search == 3)
	{
		d = scr_bullet_create(x, y, obj_queen_search_junk);
		d.parentwindow = self;
		state = 4;
	}
	else
	{
		state = 5;
	}
}
if (state == 5)
{
	timer += (timer + 1);
	image_xscale = lerp(2, 4, timer / 30);
	image_yscale = lerp(2, 0, timer / 30);
	if (timer >= 30)
		instance_destroy();
}
