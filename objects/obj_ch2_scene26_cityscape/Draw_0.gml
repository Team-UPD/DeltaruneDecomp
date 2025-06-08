siner++;
drawx = (__view_get(e__VW.XView, 0) * -0.125) + xstart;
drawy = (room == room_dw_mansion_prefountain) ? ((cameray() * -0.125) + 620) : ((cameray() + ystart) - 80);
if (auto_scroll)
	x_offset -= 0.5;
if (auto_scroll_y)
{
	auto_scroll_y_timer++;
	y_offset -= 0.75;
	if (auto_scroll_y_timer >= 30)
		auto_scroll_y = false;
}
scr_draw_sprite_tiled_area(spr_mansion_ferris_wheel_bg, 0, drawx + x_offset, drawy + y_offset, drawx + x_offset, drawy, room_width, drawy + y_offset + view_hport[0], 1, 1, c_white, 1);
if (show_laser_outline)
{
	if (reveal_pos < 0)
		reveal_pos = camerax();
	if (!cityscape_reveal)
	{
		reveal_pos += 16;
		if (reveal_pos >= (camerax() + view_wport[0]))
			cityscape_reveal = true;
		gpu_set_blendenable(false);
		gpu_set_colorwriteenable(false, false, false, true);
		draw_set_alpha(0);
		draw_rectangle(reveal_pos, 0, camerax() + view_wport[0], cameray() + view_hport[0], false);
		draw_set_alpha(1);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true, true, true, true);
		gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, 1);
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}
	else
	{
		scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, main_alpha);
	}
}
if (show_laser_beam)
{
	if (beam_offset < 60)
		beam_offset += 4;
	if (show_laser_hand && hand_alpha > 0)
		hand_alpha -= 0.1;
	else
		show_laser_hand = false;
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape_mask, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, main_alpha);
	draw_rectangle(drawx, cameray() + 190, camerax() + view_wport[0], cameray() + view_hport[0], false);
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_beam, 0, (camerax() + (view_wport[0] / 2)) - beam_offset, cameray(), (camerax() + (view_wport[0] / 2)) - beam_offset, cameray(), camerax() + (view_wport[0] / 2) + beam_offset, cameray() + 200, 1, 1, c_white, 1);
	d3d_set_fog(false, c_black, 0, 0);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
if (show_mini_fountains)
{
	if (mini_alpha < 1)
		mini_alpha += 0.1;
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, mini_alpha);
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape_mask, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, mini_alpha);
	draw_rectangle(drawx, cameray() + 190, camerax() + view_wport[0], cameray() + view_hport[0], false);
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_beam, 0, kris_screen.x - 2, cameray(), kris_screen.x - 2, cameray(), kris_screen.x + 2, cameray() + 210, 1, 1, c_white, mini_alpha);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_beam, 0, sus_screen.x - 2, cameray(), sus_screen.x - 2, cameray(), sus_screen.x + 2, cameray() + 210, 1, 1, c_white, mini_alpha);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_beam, 0, no_screen.x - 2, cameray(), no_screen.x - 2, cameray(), no_screen.x + 2, cameray() + 210, 1, 1, c_white, mini_alpha);
	d3d_set_fog(false, c_black, 0, 0);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
if (mini_cityscape)
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, main_alpha);
if (tender_goodbye)
{
	siner++;
	if (!tender_fly)
		sinery = sin(siner / 20) * 4;
	else
		sinery -= 10;
	if (tender_reveal_pos < 0)
	{
		snd_play(snd_magicsprinkle);
		tender_reveal_pos = (camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite);
	}
	if (!tender_reveal)
	{
		tender_reveal_pos += 8;
		if (tender_reveal_pos >= (camerax() + (view_wport[0] / 2) + (sprite_get_width(byebye_sprite) * 2)))
			tender_reveal = true;
	}
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(tender_reveal_pos, cameray() + 40 + sinery, camerax() + (view_wport[0] / 2) + (sprite_get_width(byebye_sprite) * 2), cameray() + 40 + (sprite_get_height(byebye_sprite) * 2) + sinery, false);
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(byebye_sprite, 0, (camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite), cameray() + 40 + sinery, 2, 2, 0, c_white, 0.8 + (sin(siner / 8) * 0.2));
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
if (tender_cancel)
{
	siner++;
	if (tender_cancel_pos < 0)
		tender_cancel_pos = (camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite) - 10;
	tender_cancel_pos += 16;
	if (tender_cancel_pos >= (camerax() + (view_wport[0] / 2) + sprite_get_width(byebye_sprite) + 10))
	{
		tender_timer--;
		if (tender_timer <= -30)
			tender_fly = true;
	}
	if (!tender_fly)
	{
		sinery = sin(siner / 20) * 4;
	}
	else
	{
		sinery -= 10;
		if (sinery <= -200)
		{
			tender_goodbye = false;
			tender_cancel = false;
		}
	}
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(tender_cancel_pos, sinery + cameray() + 50 + (sprite_get_height(byebye_sprite) / 2), camerax() + (view_wport[0] / 2) + sprite_get_width(byebye_sprite) + 10, cameray() + 120 + (sprite_get_height(spr_cutscene_27_tender_cancelled) * 2) + sinery, false);
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_set_color(c_red);
	draw_rectangle((camerax() + (view_wport[0] / 2)) - sprite_get_width(byebye_sprite) - 10, cameray() + 50 + (sprite_get_height(byebye_sprite) / 2) + sinery, camerax() + (view_wport[0] / 2) + sprite_get_width(byebye_sprite) + 10, cameray() + 50 + (sprite_get_height(byebye_sprite) / 2) + 4 + sinery, false);
	draw_set_color(c_white);
	draw_sprite_ext(spr_cutscene_27_tender_cancelled, 0, (camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_27_tender_cancelled), cameray() + 120 + sinery, 2, 2, 0, c_white, 0.9 + (sin(siner / 8) * 0.1));
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
if (show_hands)
{
	draw_sprite_ext(spr_cutscene_26_laser_hand_right, 0, hand_right_xpos, cameray() + 80, 2, 2, 0, c_white, 1);
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	scr_draw_sprite_tiled_area(spr_cutscene_26_laser_cityscape_mask, 0, drawx, drawy, drawx, drawy, room_width, room_height, 1, 1, c_white, knife_alpha);
	draw_rectangle(drawx, cameray() + 190, camerax() + view_wport[0], cameray() + view_hport[0], false);
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(spr_cutscene_26_laser_knife, 0, (camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_26_laser_knife), knife_ypos, 2, 2, 0, c_white, 1);
	d3d_set_fog(false, c_black, 0, 0);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
