var solidcheck = 0;
cancollide = 0;
if (sliding == 0 && global.interact == 0)
{
	if (obj_mainchara.y < ((y + sprite_height) - obj_mainchara.sprite_height))
	{
		with (obj_mainchara)
		{
			if (place_meeting(x, y + 20, obj_solidblock))
				solidcheck = 1;
		}
		if (solidcheck == 0)
		{
			snd_play(snd_noise);
			if (room == room_dw_cyber_teacup_final)
				snd_play(snd_paper_surf);
			else
				slide_noise = snd_loop(snd_paper_surf);
			with (obj_mainchara)
			{
				sliding = 1;
				fun = 1;
				sprite_index = spr_krisd_slide;
			}
			sliding = 1;
		}
	}
	else
	{
		obj_mainchara.y = (y + sprite_height) - 48;
	}
}
if (sliding == 1)
{
	collide = 1;
	global.interact = 1;
	other.y += 12;
	collidetimer = 1;
	collider += 1;
	if (slidetimer == 0)
	{
		dust = instance_create(obj_mainchara.x + 20, obj_mainchara.y + 30, obj_slidedust);
		with (dust)
		{
			vspeed = -6;
			hspeed = -1 + random(2);
		}
		slidetimer = -3;
	}
	slidetimer += 1;
	if (slidetimer >= 1)
		slidetimer = -3;
	if (move_lr_enabled)
	{
		if (left_h())
		{
			with (obj_mainchara)
			{
				_px = -6;
				if (!place_meeting(x + _px, y, obj_solidblock))
					x += _px;
			}
		}
		if (right_h())
		{
			with (obj_mainchara)
			{
				_px = 6;
				if (!place_meeting(x + _px, y, obj_solidblock))
					x += _px;
			}
		}
		solidcheck = 0;
		with (obj_mainchara)
		{
			if (place_meeting(x, y + 20, obj_solidblock))
				solidcheck = 1;
		}
		if (solidcheck == 1)
			instant_end_sliding = 1;
	}
}
