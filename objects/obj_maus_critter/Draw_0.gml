if (init >= 2)
{
	var _inbounds = x > (obj_growtangle.x - 50) && x < (obj_growtangle.y + 50) && y > (obj_growtangle.y - 50) && y < (obj_growtangle.y + 50);
	var offset = 0;
	if (alarm[0] && speed == 0)
	{
		if ((alarm[0] % 4) == 2)
			offset = 1;
		else if ((alarm[0] % 4) > 0)
			offset = 2;
		if (alarm[0] < 4)
			offset *= -1;
	}
	if (!_inbounds)
		scr_draw_in_box_ext_begin(26, 26);
	if (big && sprite_index != spr_maus_critter_stuck)
	{
		var _changeDist = 60;
		if ((direction == 0 && x > (obj_growtangle.x + _changeDist)) || (direction == 90 && y < (obj_growtangle.y - _changeDist)) || (direction == 180 && x < (obj_growtangle.x - _changeDist)) || (direction == 270 && y > (obj_growtangle.y + _changeDist)))
			sprite_index = spr_maus_critter_stuck;
	}
	if ((direction % 180) == 0)
		draw_sprite_ext(sprite_index, image_index, x, y + (offset * sign(direction - 135)), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	else
		draw_sprite_ext(sprite_index, image_index, x + (offset * sign(direction - 135)), y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if (!_inbounds)
		scr_draw_in_box_end();
}
else
{
	var eyeframe = 0;
	if (eyetimer < 18)
	{
		if (eyetimer >= 0)
			eyeframe++;
		if (eyetimer >= 2)
			eyeframe++;
		if (eyetimer >= 16)
			eyeframe++;
	}
	draw_sprite_ext(spr_maus_eyes, eyeframe, x, y, 1, 1, direction, c_white, 1);
	eyetimer++;
	if (eyetimer >= 20)
	{
		active = 1;
		init = 2;
		speed = initialspeed;
	}
}
