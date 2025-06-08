make_effect_timer++;
if (make_effect_timer >= 10)
{
	for (i = 0; i < 10; i++)
	{
		if (actor_visible[i][step_current] == 1)
		{
			if (actor_startx[i][step_current] != actor_endx[i][step_current] || actor_starty[i][step_current] != actor_endy[i][step_current])
			{
				fake_actor = instance_create(actor_startx[i][step_current], actor_starty[i][step_current], obj_actor);
				fake_actor.image_alpha = 0.5;
				fake_actor.sprite_index = actor_endsprite[i][step_current];
				fake_actor.debug_killtimer = actor_time[i][step_current] + 10;
				mover = instance_create(0, 0, obj_move_to_point);
				mover.target = fake_actor;
				mover.movex = actor_endx[i][step_current];
				mover.movey = actor_endy[i][step_current];
				mover.movemax = actor_time[i][step_current];
			}
		}
	}
	make_effect_timer = 0;
}
for (i = 0; i < 10; i++)
{
	if (actor_visible[i][step_current] == 1)
	{
		_asx = actor_startx[i][step_current];
		_asy = actor_starty[i][step_current];
		_aex = actor_endx[i][step_current];
		_aey = actor_endy[i][step_current];
		draw_sprite_ext(actor_endsprite[i][step_current], 0, actor_startx[i][step_current], actor_starty[i][step_current], 1 + global.darkzone, 1 + global.darkzone, 0, c_white, 1);
		draw_sprite_ext(actor_endsprite[i][step_current], 0, hover_x, hover_y, 1 + global.darkzone, 1 + global.darkzone, 0, c_white, 1);
		draw_sprite(spr_pie, 0, mouse_x, mouse_y);
		draw_set_color(c_yellow);
		draw_line(actor_startx[i][step_current], actor_starty[i][step_current], actor_endx[i][step_current], actor_endy[i][step_current]);
		draw_set_color(c_fuchsia);
		draw_ellipse(_asx - 10, _asy - 5, _asx + 10, _asy + 5, false);
		draw_set_color(c_aqua);
		draw_ellipse(_aex - 10, _aey - 5, _aex + 10, _aey + 5, false);
	}
}
for (j = 0; j <= step_max; j++)
{
	for (i = 0; i < 10; i++)
	{
		if (actor_visible[i][j] == 1)
		{
			draw_sprite_ext(actor_endsprite[i][j], 0, actor_startx[i][j], actor_starty[i][j], 1 + global.darkzone, 1 + global.darkzone, 0, c_fuchsia, 0.5);
			draw_set_color(c_red);
			scr_84_set_draw_font("main");
			draw_text(actor_endx[i][j], actor_endy[i][j], string_hash_to_newline(stringsetsubloc("actor, ~1  step:~2", string(i), string(j), "obj_cutscene_maker_slash_Draw_0_gml_60_0")));
		}
	}
}
