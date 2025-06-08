if (o_boxingqueen.drawflip == 1)
{
	x = o_boxingqueen.x + 13;
	y = o_boxingqueen.y - 80;
}
else
{
	x = o_boxingqueen.x - 13;
	y = o_boxingqueen.y - 80;
}
if (horizontal == 1)
{
	if (o_boxingqueen.drawflip == 1)
	{
		x = o_boxingqueen.x + 70;
		y = o_boxingqueen.y - 170;
	}
	else
	{
		x = o_boxingqueen.x - 70;
		y = o_boxingqueen.y - 170;
	}
}
var xx1 = x;
var yy1 = 640;
var xx2 = x;
var yy2 = 640;
if (horizontal == 1)
{
	yy1 = 240;
	yy2 = 240;
	if (o_boxingqueen.x < 320)
	{
		xx1 = 640;
		xx2 = 640;
	}
	else
	{
		xx1 = 0;
		xx2 = 0;
	}
}
if (state == 0)
{
	timer += 40;
	if (timer > 100)
		timer = 100;
	if (timer > 35)
	{
		if (horizontal == 1)
		{
			laser_hitbox = instance_create(320, y, o_boxing_hitbox);
			with (laser_hitbox)
			{
				hit_dodging = 1;
				give_hurt = 50 / f;
				give_invincibility = 40 / f;
				timer = 3;
				damage = 20;
				image_yscale = 10;
				image_xscale = 30;
			}
		}
		else
		{
			laser_hitbox = instance_create(x, y + 120, o_boxing_hitbox);
			with (laser_hitbox)
			{
				hit_ducking = 1;
				give_hurt = 30 / f;
				give_invincibility = 40 / f;
				timer = 3;
				damage = 20;
				image_yscale = 20;
				image_xscale = 3;
			}
		}
	}
	if (timer > 99)
		state = 1;
}
if (state == 1)
{
	if (shake_timer < 8)
	{
		shake_timer++;
		if (horizontal == 0)
		{
			x = (xstart - 3) + irandom(6);
			y = (ystart - 3) + irandom(6);
			yy1 = 637 + irandom(6);
			yy2 = 637 + irandom(6);
		}
		else
		{
			x = (xstart - 3) + irandom(6);
			y = (ystart - 3) + irandom(6);
			yy1 = 237 + irandom(6);
			yy2 = 237 + irandom(6);
		}
	}
	else if (timer > 0)
	{
		timer -= 60;
	}
	else
	{
		instance_destroy();
		with (obj_bq_laser_circle)
			instance_destroy();
	}
}
if (horizontal == 0)
{
	xx1 = lerp(x - 10, x - 140, timer / 100);
	xx2 = lerp(x + 10, x + 140, timer / 100);
}
else
{
	yy1 = lerp(y - 10, y - 120, timer / 100);
	yy2 = lerp(y + 10, y + 120, timer / 100);
}
draw_set_alpha(0.8);
draw_set_color(c_lime);
draw_primitive_begin(pr_trianglelist);
draw_vertex(x, y);
draw_vertex(xx1, yy1);
draw_vertex(xx2, yy2);
draw_primitive_end();
