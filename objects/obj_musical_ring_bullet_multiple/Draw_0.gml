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
	circle2alpha = lerp(0, 1, bullettimer / bullettimermax);
	circle2radius = lerp(51, 31, bullettimer / bullettimermax);
	bullettimer++;
	if (bullettimer == bullettimermax)
	{
		if (bullettype == 0)
		{
			bul = instance_create(x, y, obj_musical_note_bullet);
			bul.sprite_index = spr_musical_notes;
			bul.direction = 20 + ((maxtimes - times) * 10) + angleoffset;
			bul.speed = 2;
			bul.friction = 0;
			bul = instance_create(x, y, obj_musical_note_bullet);
			bul.sprite_index = spr_musical_notes;
			bul.direction = -80 + ((maxtimes - times) * 10) + angleoffset;
			bul.speed = 2;
			bul.friction = 0;
		}
		times--;
		if (times < 0)
		{
			con = 3;
		}
		else
		{
			bullettimer = 0;
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
