if (con == 0)
{
	timer++;
	circle1alpha += 0.2;
	if (timer == 5)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1)
{
	if (circle2alpha < 1)
		circle2alpha += 0.2;
	if (circle1radius < circle2radius)
	{
		circle2radius -= 2;
	}
	else
	{
		var a = random(120);
		for (i = 0; i < 1; i += 1)
		{
			bul = instance_create(x, y, obj_musical_note_bullet);
			if (i_ex(bul))
			{
				bul.sprite_index = spr_musical_notes;
				bul.grazepoints = 2;
				bul.timepoints = 1;
				bul.direction = point_direction(x, y, obj_heart.x, obj_heart.y);
				bul.speed = 2;
				bul.friction = 0;
			}
			a += 120;
		}
		con = 2;
		timer = 0;
	}
}
if (con == 2)
{
	timer++;
	circle1alpha += 0.2;
	circle2alpha -= 0.2;
	if (timer == 5)
		instance_destroy();
}
draw_set_alpha(circle1alpha);
draw_set_color(circle1color);
draw_sprite(s_kkHead, 0, x - 32, y - 21);
scr_draw_circle_width_qb(x, y, circle1radius, circle1width, 24);
draw_set_alpha(circle2alpha);
draw_set_color(c_white);
scr_draw_circle_width_qb(x, y, circle2radius, circle2width, 24);
draw_set_alpha(1);
