if (timer <= 90)
{
	if (timer <= 20)
	{
		var easespeed = scr_ease_inout(timer / 20, 2);
		x = lerp(xstart, maxx, scr_ease_in(easespeed, -1));
		y = lerp(ystart, maxy, scr_ease_out(easespeed, 7));
		if (instance_exists(obj_maus_holes))
			obj_maus_holes.dontcreatemouse = 1;
	}
	else if (timer > 60)
	{
		var easedlerp = scr_ease_inout((timer - 60) / 30, 2);
		x = lerp(maxx, memory.xpos[followindex], easedlerp);
		y = lerp(maxy, memory.ypos[followindex], easedlerp);
		if (instance_exists(obj_maus_holes))
			obj_maus_holes.dontcreatemouse = 0;
	}
	timer++;
}
else
{
	x = memory.xpos[followindex];
	y = memory.ypos[followindex];
	followindex++;
}
d = instance_create(x, y, obj_maus_cursor_trail);
d.image_blend = image_blend;
d.damage = damage;
d.target = target;
