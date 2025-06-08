if (hurtstate2 == 1)
{
	draw_sprite_ext(spr_kk_hurt, 0, x, y, 2, 2, 0, c_white, 1);
	exit;
}
if (state == 3)
	scr_enemy_drawhurt_generic();
if (state == 0)
{
	if (dancing == 1)
	{
		if (flash == 1)
			fsiner++;
		updatetimer++;
		if (updatetimer >= 2)
		{
			siner += 2;
			updatetimer = 0;
		}
		draw_monster_body_part_ext(spr_kk_dance, dance_index, x + (sin(siner / 4) * 14), (y + (abs(cos(siner / 4)) * 4)) - 4, 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 3, x - (sin(siner / 4) * 8), y + (cos(siner / 2) * 3), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 2, x + (sin(siner / 3) * 3), y + (cos(siner / 2) * 4), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 1, x + (sin(siner / 2) * 2), y + (cos(siner / 2) * 6), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(spr_kk_dance, 6, x + (sin(siner / 2) * 2) + (sin(siner / 4) * 4), y + (cos(siner / 2) * 6), 2, 2, 0, c_white, 1);
		dancetimer++;
		if (sin(siner / 4) > 0)
			dance_index = 4;
		else
			dance_index = 5;
		musicalnotetimer++;
		if (musicalnotetimer == 14)
		{
			musicalnotetimer = 0;
			anim = instance_create(((x + (sprite_width / 2)) - 10) + random(40), y + 20, obj_afterimage);
			anim.sprite_index = spr_musicalbattlenote1;
			anim.depth = depth - 5;
			anim.image_xscale = 2;
			anim.image_yscale = 2;
			anim.direction = 270;
			anim.gravity = -0.2;
			anim.hspeed = random_range(0.1, 0.8) * choose(1, -1);
		}
	}
	else
	{
		if (flash == 1)
			fsiner++;
		timer += 2;
		if (timer > 8)
		{
			timerB += 1;
			timer = 0;
		}
		if (cos(timerB) > 0.8)
			down = 1;
		if (cos(timerB) < -0.8)
			down = 0;
		draw_monster_body_part_ext(sprite[0], 0, x, y, 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[1], 0, x, y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[2], 0, x, y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[3], down, x, y, 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[5], down, x, y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[6], 0, x + (-sin(timerB) * 4), y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[7], 0, x + (-sin(timerB) * 4), y + (cos(timerB) * 2), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[8], 0, x + (-sin(timerB) * 2), y + cos(timerB), 2, 2, 0, c_white, 1);
		draw_monster_body_part_ext(sprite[9], 0, x + (-sin(timerB * 1.2) * 6), y + (cos(timerB * 2) * 2), 2, 2, 0, c_white, 1);
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
draw_set_color(c_white);
if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12 || global.bmenuno == 13)
{
	siner2++;
	var xoffset = 0;
	var yoffset = 0;
	if (global.charturn > 0 && global.bmenuno == 13)
	{
		xoffset = 140;
		yoffset = 6;
	}
	if (global.myfight == 0)
	{
		scr_84_set_draw_font("mainbig");
		if (danceCounter == 1)
		{
			draw_text_ext_transformed(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 30, stringsetloc("Dancing!", "obj_kk_enemy_slash_Draw_0_gml_106_0"), 9999, 9999, 0.7, 1, 0);
			draw_sprite(spr_musical_dancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + xoffset + (sin(siner2 / 4) * 3), __view_get(e__VW.YView, 0) + 386 + yoffset + 30);
		}
		else if (danceCounter == 2)
		{
			draw_text_ext_transformed(__view_get(e__VW.XView, 0) + 258, __view_get(e__VW.YView, 0) + 369 + yoffset + 30, stringsetloc("2 Turns!", "obj_kk_enemy_slash_Draw_0_gml_111_0"), 9999, 9999, 0.7, 1, 0);
			draw_sprite(spr_musical_dancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + xoffset + (sin(siner2 / 0.8) * 3), __view_get(e__VW.YView, 0) + 386 + yoffset + 30);
		}
		else
		{
			draw_text(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 30, stringsetloc("Not Dancing", "obj_kk_enemy_slash_Draw_0_gml_116_0"));
			draw_sprite(spr_musical_notdancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + xoffset + (sin(siner2 / 10) * 3), __view_get(e__VW.YView, 0) + 386 + yoffset + 30);
		}
	}
}
