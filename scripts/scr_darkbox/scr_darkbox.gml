function scr_darkbox(arg0, arg1, arg2, arg3)
{
	cur_jewel += 1;
	textbox_width = arg2 - arg0 - 63;
	if (textbox_width < 0)
		textbox_width = 0;
	textbox_height = arg3 - arg1 - 63;
	if (textbox_height < 0)
		textbox_height = 0;
	if (textbox_width > 0)
	{
		draw_sprite_stretched(spr_textbox_top, 0, arg0 + 32, arg1, textbox_width, 32);
		draw_sprite_ext(spr_textbox_top, 0, arg0 + 32, arg3 + 1, textbox_width, -2, 0, c_white, 1);
	}
	if (textbox_height > 0)
	{
		draw_sprite_ext(spr_textbox_left, 0, arg2 + 1, arg1 + 32, -2, textbox_height, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_left, 0, arg0, arg1 + 32, 2, textbox_height, 0, c_white, 1);
	}
	if (global.flag[8] == 0)
	{
		draw_sprite_ext(spr_textbox_topleft, cur_jewel / 10, arg0, arg1, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_topleft, cur_jewel / 10, arg2 + 1, arg1, -2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_topleft, cur_jewel / 10, arg0, arg3 + 1, 2, -2, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_topleft, cur_jewel / 10, arg2 + 1, arg3 + 1, -2, -2, 0, c_white, 1);
	}
	else
	{
		draw_sprite_ext(spr_textbox_topleft, 0, arg0, arg1, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_topleft, 0, arg2 + 1, arg1, -2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_topleft, 0, arg0, arg3 + 1, 2, -2, 0, c_white, 1);
		draw_sprite_ext(spr_textbox_topleft, 0, arg2 + 1, arg3 + 1, -2, -2, 0, c_white, 1);
	}
}
