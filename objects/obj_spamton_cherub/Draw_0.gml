if (timer == target)
{
	var _sparkle = snd_play(snd_sparkle_glock);
	snd_pitch(_sparkle, 1.1 + (target * 0.2));
}
timer++;
if (timer >= 24)
{
	x = xstart;
	y = ystart;
	if (timer == 24)
	{
		var d = instance_create(x, y, obj_animation);
		d.sprite_index = sprite_index;
		d.image_yscale = 2;
		d.image_xscale = 2;
	}
	if (!healer)
		instance_destroy();
	else if (timer == 48)
		scr_spamton_heal(heal_state);
	else if (timer >= 63)
		instance_destroy();
}
else if (timer >= 0 && timer <= 24)
{
	x = lerp(xspawn, xstart + xoff, clamp(timer / 25, 0, 1));
	y = lerp(yspawn, ystart + yoff, clamp(timer / 25, 0, 1));
	if ((timer % 2) == 0)
	{
		var d = instance_create(x + (cos((timer / 3) + offset) * 20), y + (sin((timer / 3) + offset) * 20), obj_animation);
		d.sprite_index = spr_sparestar_anim;
		d.image_speed = 0.5;
		d.image_blend = c_lime;
		d.image_xscale = 2;
		d.image_yscale = 2;
	}
}
