draw_self();
if (scale < 1)
{
	scale += 0.1;
	image_xscale = scale;
	image_yscale = scale;
	image_angle = scale * 360;
	af = scr_afterimage();
	af.image_alpha = 0.5;
	if (scale == 1)
		image_speed = 0.16666666666666666;
}
if (sprite_index == spr_queen_wireframe_blow && image_index > 2)
{
	image_index = 2;
	image_speed = 0;
}
if (scale == 1)
{
	timer++;
	timer2++;
	siner += 0.4;
	if (difficulty == 0)
		siner += 0.1;
	place1 = 270 + (sin(siner / 6) * 33.3);
	place2 = 270 + (sin((siner + 50) / 6) * 33.3);
}
if (timer > 9)
{
	bulletcount++;
	if (bulletcount == 4)
	{
		timer = 3;
		bulletcount = 0;
	}
	else
	{
		d = instance_create(x, y, obj_queen_spadeblow_bullet);
		d.damage = obj_queen_bulletcontroller.damage;
		d.type = 1;
		d.image_angle = obj_queen_spadeblow.place1;
		timer = 5;
	}
}
if (timer2 > 9 && difficulty == 1)
{
	bulletcount2++;
	if (bulletcount2 == 4)
	{
		timer2 = 3;
		bulletcount2 = 0;
	}
	else
	{
		d = instance_create(x, y, obj_queen_spadeblow_bullet);
		d.damage = obj_queen_bulletcontroller.damage;
		d.type = 2;
		d.image_angle = obj_queen_spadeblow.place2;
		timer2 = 5;
	}
}
if (global.turntimer < 3)
	instance_destroy();
