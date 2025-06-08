if (state == 0)
{
	flash = instance_create(x, y, o_afterimage);
	flash.sprite_index = sprite_index;
	flash.image_index = image_index;
	flash.image_xscale = image_xscale;
	flash.image_yscale = image_yscale;
	flash.image_blend = c_white;
	flash.image_speed = 0;
	flash.rate = 0.1;
	flash.hasboss = 0;
	flash.depth = depth + 1;
	flash.boss = id;
	movetime++;
	if (movetime < 18)
		__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + 4);
}
if (state == 0 && y > 310)
{
	y = 350;
	vspeed = 0;
	state = 1;
	image_index = 1;
	d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
	d.shakex = ceil(2);
	d.shakey = ceil(2);
	snd_play(snd_closet_impact);
}
if (state == 1)
{
	timer++;
	if (timer <= (20 / f))
	{
		shaketimer -= 0.2;
		__view_set(e__VW.XView, 0, __view_set(e__VW.XView, 0, (__view_get(e__VW.XView, 0) - shaketimer) + irandom(shaketimer * 2)));
		__view_set(e__VW.YView, 0, __view_set(e__VW.YView, 0, (__view_get(e__VW.YView, 0) - shaketimer) + irandom(shaketimer * 2)));
	}
	if (timer == (90 / f))
	{
		with (obj_bqueen_intro)
			con = 1;
	}
	if (timer == (110 / f))
		timer = 100 / f;
	if (timer == (154 / f))
	{
		obj_battlecontroller.gigaqueencon = 4;
		obj_battlecontroller.gigaqueentimer = 0;
	}
	if (timer >= (150 / f))
	{
		__view_set(e__VW.XView, 0, 0);
		__view_set(e__VW.YView, 0, 0);
		image_index = 0;
		if (y >= (basey - 35))
		{
			y = lerp(y, basey - 35, 0.5);
			if (abs(y - basey - 35) <= 2)
				y = basey - 35;
		}
		else
		{
			siner++;
			y = (basey - 38) + (sin(siner / 2) * 2);
		}
		if (x >= (basex - 70))
		{
			x = lerp(x, basex - 70, 0.5);
			if (abs(x - basex - 70) <= 2)
				x = basex - 70;
		}
	}
	if (timer == (160 / f))
	{
		obj_3d_bg_effect.slow_down = 0;
		with (obj_bqueen_intro)
			instance_destroy();
		instance_destroy();
		global.batmusic[0] = snd_init("boxing_boss.ogg");
		mus_loop_ext(global.batmusic[0], 1, 1);
	}
}
