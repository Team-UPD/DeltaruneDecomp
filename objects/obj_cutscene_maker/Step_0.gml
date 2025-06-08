newstep = 0;
hover_x = mouse_x;
hover_y = mouse_y;
_asx = actor_startx[actor_selected][step_current];
_asy = actor_starty[actor_selected][step_current];
dir_from_actor = point_direction(hover_x, hover_y, _asx, _asy);
thiscardinal = scr_get_cardinal_direction(dir_from_actor);
if (move_mode == 1)
{
	actor_move_style[actor_selected][step_current] = "cardinal";
	if (thiscardinal == "d" || thiscardinal == "u")
		hover_x = _asx;
	if (thiscardinal == "r" || thiscardinal == "l")
		hover_y = _asy;
	actor_cardinal[actor_selected][step_current] = thiscardinal;
}
else
{
	actor_move_style[actor_selected][step_current] = "direct";
}
if (grid_mode == 1)
{
	hover_x = round(hover_x / 20) * 20;
	hover_y = round(hover_y / 20) * 20;
}
if (keyboard_check_pressed(ord("1")))
{
	if (actor_selected > 0)
		actor_selected--;
}
if (keyboard_check_pressed(ord("2")))
{
	if (actor_selected < 8)
		actor_selected++;
}
if (keyboard_check_pressed(ord("M")))
{
	actor_startx[actor_selected][step_current] = mouse_x;
	actor_starty[actor_selected][step_current] = mouse_y;
}
if (keyboard_check_pressed(ord("I")))
	actor_endsprite[actor_selected][step_current] = spr_susied_dark;
if (mouse_check_button_pressed(mb_left))
{
	actor_endx[actor_selected][step_current] = hover_x;
	actor_endy[actor_selected][step_current] = hover_y;
}
if (keyboard_check_pressed(ord("N")))
	newstep = 1;
if (newstep == 1)
{
	step_max += 1;
	step_current = step_max;
	for (i = 0; i < 10; i++)
	{
		actor_startx[i][step_max] = actor_endx[i][step_max - 1];
		actor_starty[i][step_max] = actor_endy[i][step_max - 1];
		actor_endx[i][step_max] = actor_endx[i][step_max - 1];
		actor_endy[i][step_max] = actor_endy[i][step_max - 1];
		actor_startfacing[i][step_max] = actor_endfacing[i][step_max - 1];
		actor_endfacing[i][step_max] = actor_endfacing[i][step_max - 1];
		actor_startsprite[i][step_max] = actor_endsprite[i][step_max - 1];
		actor_endsprite[i][step_max] = actor_endsprite[i][step_max - 1];
		actor_image[i][step_max] = 0;
		actor_animation_speed[i][step_max] = 0;
		actor_time[i][step_max] = 30;
		actor_visible[i][step_max] = actor_visible[i][step_max - 1];
		actor_move_style[i][step_max] = "cardinal";
		actor_cardinal[i][step_max] = actor_cardinal[i][step_max - 1];
		actor_cardinal_speed[i][step_max] = actor_cardinal_speed[i][step_max - 1];
	}
	newstep = 0;
}
if (keyboard_check_pressed(vk_space))
{
	totalstring = "";
	for (j = 0; j < step_max; j++)
	{
		for (i = 0; i < 10; i++)
		{
			this_actor_name = "\"" + string(actor_name[i]) + "\"";
			this_action_string_head = "c_sel(" + this_actor_name + ")#";
			this_action_string_foot = "";
			action = 0;
			actor_moved = 0;
			if (actor_startx[i][j] != actor_endx[i][j])
				actor_moved = 1;
			if (actor_starty[i][j] != actor_endy[i][j])
				actor_moved = 1;
			if (actor_moved == 1)
			{
				action = 1;
				if (actor_move_style[i][j] == "cardinal")
					this_action_string_foot += ("c_walk(" + this_actor_name + "," + actor_cardinal[i][j] + "," + string(actor_cardinal_speed[i][j]) + "," + string(actor_time[i][j]) + ")#");
				if (actor_move_style[i][j] == "direct")
					this_action_string_foot += ("c_walktopoint(" + string(actor_endx[i][j]) + "," + string(actor_endy[i][j]) + "," + string(actor_time[i][j]) + ")#");
			}
			actor_faced = 0;
			if (actor_startfacing[i][j] != actor_endfacing[i][j])
				actor_faced = 1;
			if (actor_faced == 1)
			{
				action = 1;
				this_action_string_foot += ("c_face(\"" + actor_endfacing[i][j] + "\"" + ")#");
			}
			if (action == 1)
				totalstring += (this_action_string_head + this_action_string_foot);
		}
	}
	clipboard_set_text(totalstring);
}
