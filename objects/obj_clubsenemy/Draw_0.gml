if (notail == 1)
{
	siner += 1;
	draw_sprite_ext(spr_clubs_tail_attack, 0, x, y, 2, 2, 0, image_blend, 1);
	exit;
}
if (state == 3)
{
	if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 2))
	{
		global.monsterstatus[myself] = 1;
		if (global.monstercomment[myself] == " ")
			global.monstercomment[myself] = stringsetloc("(Tired)", "obj_clubsenemy_slash_Draw_0_gml_15_0");
	}
	hurttimer -= 1;
	if (hurttimer < 0)
	{
		state = 0;
	}
	else
	{
		if (global.monster[myself] == 0)
		{
			global.flag[522] += 1;
			scr_defeatrun();
		}
		hurtshake += 1;
		if (hurtshake > 1)
		{
			if (shakex > 0)
				shakex -= 1;
			if (shakex < 0)
				shakex += 1;
			shakex = -shakex;
			hurtshake = 0;
		}
		draw_sprite_ext(spr_clubs_hurt, 0, x + shakex, y, 2, 2, 0, image_blend, 1);
	}
}
if (state == 0)
{
	siner += 1;
	thissprite = spr_clubs_idle;
	if (global.mercymod[myself] >= global.mercymax[myself])
		thissprite = spr_clubs_spared;
	draw_sprite_ext(thissprite, siner / 6, x, y, 2, 2, 0, image_blend, 1);
	if (flash == 1)
	{
		fsiner += 1;
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(thissprite, siner / 6, x, y, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
if (actcon == 15)
{
	if (clockalpha <= 1)
		clockalpha += 0.05;
}
else if (clockalpha >= 0)
{
	clockalpha -= 0.05;
}
if (room == room_dw_castle_dojo && instance_exists(obj_dojofx))
{
	draw_set_color(c_red);
	draw_set_halign(fa_center);
	scr_84_set_draw_font("mainbig");
	var timestring = string(round(topic_timer / 30));
	if (round(topic_timer / 30) < 10)
		timestring = "0" + timestring;
	if (topic_con != 0)
	{
		var timetextstring = stringsetloc("TIME: ", "obj_clubsenemy_slash_Draw_0_gml_98_0");
		var totaltimetextstring = timetextstring + timestring;
		draw_set_color(c_black);
		draw_rectangle((camerax() + 320) - (string_width(totaltimetextstring) / 2) - 10, (cameray() + 298) - (string_height(totaltimetextstring) / 2), camerax() + 320 + (string_width(totaltimetextstring) / 2) + 10, cameray() + 298 + (string_height(totaltimetextstring) / 2) + 40, 0);
		draw_set_color(c_red);
		draw_text(camerax() + 320, cameray() + 290, totaltimetextstring);
		draw_set_halign(fa_left);
		draw_set_color(c_white);
	}
	cx = obj_dojofx.ball.x;
	cy = obj_dojofx.ball.y + 65;
	if ((topic_timer / topic_timer_total) < 0.25)
	{
		cx = lerp(cx, cx + (sin(topic_timer_total - topic_timer) * 6), 0.125);
		cy = lerp(cy, cy + (cos(topic_timer_total - topic_timer) * 6), 0.125);
	}
	progress = (topic_timer / topic_timer_total) * 360;
	draw_sprite_ext(spr_clubs_clock_background, 0, cx - 56, cy - 57, 2, 2, 0, c_white, clockalpha);
	draw_sprite_ext(spr_clubs_clock_background, 1, cx - 56, cy - 57, 2, 2, 0, c_white, (1 - (topic_timer / topic_timer_total)) * clockalpha);
	draw_sprite_ext(spr_clubs_clock_smallhand, 0, cx, cy, 2, 2, 360 - (progress * 10), c_white, clockalpha);
	draw_sprite_ext(spr_clubs_clock_bighand, 0, cx, cy, 2, 2, 360 - progress, c_white, clockalpha);
}
