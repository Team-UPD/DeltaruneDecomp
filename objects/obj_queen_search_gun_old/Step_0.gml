if (loading > 0)
	exit;
if (smashed)
{
	timer++;
	if (timer >= 30)
	{
		var _xx = x + scr_orbitx(0, 0, 64 * flip, -20, image_angle);
		var _yy = y + scr_orbity(0, 0, 64 * flip, -20, image_angle);
		d = instance_create(_xx, _yy, obj_regularbullet);
		d.sprite_index = spr_spadebullet;
		d.image_angle = image_angle + (flip ? 0 : 180);
		d.damage = damage;
		d.target = target;
		d.speed = 12;
		obj_queen_search_flail.broken = 1;
		d.direction = image_angle + (flip ? 0 : 180);
		instance_destroy();
	}
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
if (timer < targetTime)
{
	timer++;
	if (timer < 0)
		exit;
	image_angle = lerp(0, targetAngle, scr_ease_inout(timer / targetTime, -1));
	if (timer >= targetTime)
	{
		var _xx = x + scr_orbitx(0, 0, 64 * flip, -20, image_angle);
		var _yy = y + scr_orbity(0, 0, 64 * flip, -20, image_angle);
		d = instance_create(_xx, _yy, obj_queen_search_laser);
		d.damage = damage;
		d.target = target;
		d.direction = image_angle + (flip ? 0 : 180);
		state = 3;
		timer = -15;
		event_user(0);
	}
}
