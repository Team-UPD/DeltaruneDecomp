timer++;
if (timer < 24)
{
	obj_mauswheel_enemy.image_speed += 0.08;
	_pitch += 0.02;
	snd_pitch(snd_sneo_overpower, _pitch);
}
if (timer > 0 && timer < 16)
{
	d = instance_create(x, y, obj_rouxls_power_up_orb);
	d.direction = irandom(360);
	d.lifetime = 12;
	d.depth = depth + 1;
	d.image_blend = image_blend;
}
if (timer > 0 && timer < 24)
{
	image_xscale += 0.025;
	image_yscale += 0.025;
}
if (timer == 24)
{
	if (goal == 100)
		move_towards_point(median(obj_heart.x, obj_growtangle.x), median(obj_heart.y, obj_growtangle.y), 4.5);
	else
		move_towards_point(obj_heart.x, obj_heart.y, 5);
	var randoffset = irandom(360);
	var new_bullet = -4;
	new_bullet = instance_create(x + lengthdir_x(8, randoffset), y + lengthdir_y(8, randoffset), obj_mauswheel_lightning_orb_ball);
	scr_bullet_inherit(new_bullet);
	new_bullet.source = id;
	new_bullet = instance_create(x + lengthdir_x(8, randoffset + 120), y + lengthdir_y(8, randoffset + 120), obj_mauswheel_lightning_orb_ball);
	scr_bullet_inherit(new_bullet);
	new_bullet.source = id;
	new_bullet = instance_create(x + lengthdir_x(8, randoffset - 120), y + lengthdir_y(8, randoffset - 120), obj_mauswheel_lightning_orb_ball);
	scr_bullet_inherit(new_bullet);
	new_bullet.source = id;
	active = false;
	visible = false;
	mask_index = spr_nothing;
	scr_lerpvar_instance(obj_mauswheel_enemy.id, "image_speed", obj_mauswheel_enemy.image_speed, 0.5, 8);
	snd_stop(snd_sneo_overpower);
	snd_play(snd_chargeshot_fire);
	with (obj_rouxls_power_up_orb)
		instance_destroy();
}
if (timer > 24)
{
	var new_angle = 0;
	var new_distance = 0;
	var new_goal = goal;
	if (x < (obj_growtangle.x - 160))
		new_goal = 8;
	with (obj_mauswheel_lightning_orb_ball)
	{
		if (other.id == source)
		{
			x += other.hspeed;
			y += other.vspeed;
			new_angle = point_direction(other.x, other.y, x, y);
			if (siner > 4)
				new_distance = point_distance(x, y, other.x, other.y);
			else
				new_distance = 8;
			x = other.x + lengthdir_x(scr_approach(new_distance, new_goal, abs(new_goal - new_distance) * 0.03), new_angle + ((1 - (new_distance / 150)) * 6));
			y = other.y + lengthdir_y(scr_approach(new_distance, new_goal, abs(new_goal - new_distance) * 0.03), new_angle + ((1 - (new_distance / 150)) * 6));
		}
	}
}
if (x < (camerax() - 60))
{
	with (obj_mauswheel_lightning_orb_ball)
	{
		if (other.id == source)
			instance_destroy();
	}
	instance_destroy();
}
