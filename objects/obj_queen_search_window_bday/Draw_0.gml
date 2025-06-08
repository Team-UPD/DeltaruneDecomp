if (state == -1)
{
	timer += (timer + 1);
	image_xscale = lerp(2, 0.5, timer / 30);
	image_yscale = lerp(0, 2, timer / 30);
	if (timer >= 30)
	{
		state = 0;
		timer = 0;
	}
}
if (state == 0)
{
	timer += (timer + 1);
	image_xscale = lerp(0.5, 1, timer / 15);
	image_yscale = lerp(2, 1, timer / 15);
	if (timer >= 15)
	{
		timer = -10;
		state = 1;
		image_index = 1;
		image_xscale = 1;
		image_yscale = 1;
	}
}
if (state > 0)
	draw_sprite(sprite_index, 2, x, y);
if (state == 1)
{
	draw_sprite(sprite_index, 3, x, y);
	var _count = clamp(floor(timer / 2), 0, string_length(targetstring));
	draw_set_color(c_black);
	scr_84_set_draw_font("main");
	var _finalstring = string_copy(targetstring, 0, _count);
	if (_count == 0 || _count == string_length(targetstring))
	{
		typetimer++;
		if (!firsttime)
			typetimer++;
		if ((typetimer % 30) < 15)
			_finalstring += "|";
	}
	else
	{
		typetimer = 0;
	}
	draw_text(x - 48, y - 7, _finalstring);
	timer++;
	if (!firsttime && search > -1 && search < 3)
		timer++;
	if (timer >= (45 + spawndelay))
		state = 2;
}
draw_self();
if (state == 2)
{
	if (search == 1)
	{
		d = instance_create(x - (20 * sign(obj_growtangle.x - x)), y + 12, obj_queen_search_gun);
		d.damage = damage;
		d.target = target;
		d.parentwindow = self;
		state = 3;
	}
	else if (search == 3)
	{
		d = instance_create(x, y + 10, obj_queen_search_bdog);
		d.damage = damage;
		d.target = target;
		d.parentwindow = self;
		state = 3;
	}
	else if (search == 4)
	{
		d = instance_create(x, y, obj_queen_search_image);
		d.parentwindow = self;
		state = 3;
	}
	else
	{
		image_xscale -= 0.2;
		image_yscale -= 0.2;
		if (image_xscale <= 0)
			instance_destroy();
	}
}
