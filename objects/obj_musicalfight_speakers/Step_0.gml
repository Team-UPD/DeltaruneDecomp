timer++;
if (state == 0)
{
	scale = scr_ease_out(timer / tempo, -1);
	if (timer == tempo)
		state = 1;
}
if (state == 1)
{
	if (timer >= tempo)
	{
		if (beatcount == maxbeats)
		{
			state = 2;
			exit;
		}
		timer -= tempo;
		d = instance_create(x, y, obj_soundwave_effect);
		d.depth = obj_heart.depth + 1;
		d.minradius = 10;
		d.growtime = 45;
		d.fadetime = 20;
		d.easepower = 0;
		d.maxradius = 150;
		btimer = 0;
		scale = 1.25;
		var bulletdir = 0;
		for (i = 0; i < bulletsperbeat; i++)
		{
			bulletdir = (baseangle + ((i / bulletsperbeat) * 360) + random(180 / bulletsperbeat)) - (90 / bulletsperbeat);
			xx = x + lengthdir_x(10, bulletdir);
			yy = y + lengthdir_y(10, bulletdir);
			d = scr_bullet_create(xx, yy, obj_fadingbullet);
			d.speed = 3;
			d.direction = bulletdir;
			d.sprite_index = spr_musical_notes;
			d.image_angle = random(80) - 40;
			if (abs(angle_difference(direction, bulletdir)) > 70)
				d.lifetime = 0;
			else
				d.lifetime = 60;
		}
		baseangle += (180 / bulletsperbeat);
		beatcount++;
	}
	if (scale > 1)
		scale -= 0.05;
}
else if (state == 2)
{
	scale -= 0.1;
	if (scale == 0)
		instance_destroy();
}
image_xscale = scale;
image_yscale = scale;
