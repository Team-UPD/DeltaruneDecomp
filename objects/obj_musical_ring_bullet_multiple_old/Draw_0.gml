if (con == 0)
{
	timer++;
	circle1alpha += 0.1;
	if (timer == 10)
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
		con = 2;
		timer = 0;
	}
}
if (con == 2)
{
	timer++;
	bullettimer++;
	if (timer == 3 || timer == 6 || timer == 9)
	{
		bul = instance_create(x, y, obj_musical_note_bullet);
		if (i_ex(bul))
		{
			bul.sprite_index = spr_musical_notes;
			bul.grazepoints = 2;
			bul.timepoints = 1;
			bul.direction = point_direction(x, y, obj_heart.x, obj_heart.y);
			bul.speed = 6;
			bul.friction = 0.1;
		}
	}
	if (timer == 10)
	{
		times--;
		if (times < 0)
		{
			con = 3;
		}
		else
		{
			con = 1;
			circle2alpha = 0;
			circle2radius = 75;
		}
		timer = 0;
	}
}
if (con == 3)
{
	timer++;
	circle1alpha += 0.2;
	circle2alpha -= 0.2;
	if (timer == 5)
		instance_destroy();
}
draw_set_alpha(circle1alpha);
draw_set_color(circle1color);
draw_sprite(spr_hatguy_head, 0, x, y);
scr_draw_circle_width_qb(x, y, circle1radius, circle1width, 24);
draw_set_alpha(circle2alpha);
draw_set_color(c_white);
scr_draw_circle_width_qb(x, y, circle2radius, circle2width, 24);
draw_set_alpha(1);
