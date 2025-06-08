if (con == 0)
{
	timer++;
	headalpha += 0.1;
	circle1alpha += 0.1;
	if (timer == 10)
	{
		con = 1;
		timer = 0;
		path_start(path, 10, path_action_stop, false);
	}
}
if (con == 1)
{
	circle2alpha = lerp(0, 1, path_position);
	circle2radius = lerp(75, 31, path_position);
}
if (path_position == 1 && con == 1)
	con = 2;
if (con == 2)
{
	con = 3;
	var a = random(60);
	for (i = 0; i < 6; i += 1)
	{
		bul = instance_create(x, y, obj_musical_note_bullet);
		if (i_ex(bul))
		{
			bul.sprite_index = spr_musical_notes;
			bul.grazepoints = 2;
			bul.timepoints = 1;
			bul.direction = a + random(24);
			bul.speed = 2;
			bul.friction = 0;
		}
		a += 60;
	}
}
if (con == 3)
{
	headalpha -= 0.1;
	if (headalpha < 0)
		instance_destroy();
}
draw_set_alpha(headalpha);
draw_sprite(spr_sweet_head, 0, x, y);
draw_set_alpha(1);
draw_set_alpha(circle1alpha);
draw_set_color(c_red);
scr_draw_circle_width_qb(x, y, circle1radius, circle1width, 24);
draw_set_alpha(circle2alpha);
draw_set_color(c_white);
scr_draw_circle_width_qb(x, y, circle2radius, circle2width, 24);
draw_set_alpha(1);
