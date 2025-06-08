if (broken > 0)
{
	if (broken == 1)
	{
		direction = scr_getlaunchdirection(18, 636 - x, 0.75, 1);
		speed = 18;
		gravity = 0.75;
		var chaindirection = point_direction(xstart, ystart, x, y);
		for (i = 0; i < 4; i++)
		{
			xx = lerp(xstart, x, i / 4);
			yy = lerp(ystart, y, i / 4);
			d = instance_create(xx, yy, obj_afterimage);
			d.direction = chaindirection + (flip * -90) + random_range(-15, 15);
			d.gravity = 0.75;
			d.speed = random_range(2, 15);
			d.sprite_index = sprite_index;
			d.image_speed = 0;
			d.image_index = 1;
			d.depth = depth;
		}
		broken = 2;
	}
	exit;
}
if (hitstun > 0)
{
	hitstun--;
	exit;
}
if (bufferstate == 0 && scr_queen_buffercheck())
{
	image_blend = c_gray;
	bufferstate = 1;
}
else if (bufferstate == 1 && !scr_queen_buffercheck())
{
	image_blend = c_white;
	bufferstate = 2;
}
if (bufferstate == 1)
	exit;
if (loading > 0)
	exit;
if (timer < 165)
{
	scr_orbitaroundpoint_dx(xstart, ystart, min(timer * 2, 340), (timer * 10 * flip) + direction);
}
else if (timer >= 165 && impact == 0)
{
	timer = 164.6;
	scr_orbitaroundpoint_dx(xstart, ystart, min(timer * 2, 340), (timer * 10 * flip) + direction);
	d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
	d.shakex = ceil(2);
	d.shakey = ceil(2);
	snd_play(snd_screenshake);
	for (i = 0; i < 4; i++)
	{
		d = instance_create(x, y, obj_regularbullet);
		d.sprite_index = spr_spadebullet;
		d.updateimageangle = 1;
		d.gravity = 0.75;
		d.direction = 90 + (flip * (-25 + (i * 10) + irandom(10)));
		d.speed = 20;
	}
	impact = 1;
}
timer++;
bufferstate = 0;
