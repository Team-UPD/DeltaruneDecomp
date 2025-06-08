draw_text(80, 10, global.turntimer);
if (hurtstate2 == 1)
{
	draw_sprite_ext(spr_sweet_hurt, 0, x, y, 2, 2, 0, c_white, 1);
	exit;
}
if (state == 3)
	scr_enemy_drawhurt_generic();
if (state == 0)
{
	if (dancing)
	{
		updatetimer++;
		if (updatetimer >= 2)
		{
			siner += 2;
			updatetimer = 0;
		}
		if (flash == 1)
			fsiner++;
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 8 - dance_index, x + (sin(siner / 4) * 3) + 2, y, 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 3 - dance_index, x + (sin(siner / 3) * 3), y + (cos(siner / 2) * 4), 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 4, x + (sin(siner / 2) * 2), y + (cos(siner / 2) * 3), 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 1, (x + (sin(siner / 2) * 6)) - 4, y + (cos(siner / 2) * 6), 2, 2, 0, c_white, image_alpha);
		draw_monster_body_part_ext(spr_sweet_dance_pieces, 5 + dance_index, x + (sin(siner / 3) * 3), y + (cos(siner / 2) * 4), 2, 2, 0, c_white, image_alpha);
		dancetimer++;
		if (sin(siner / 4) > 0)
			dance_index = 1;
		else
			dance_index = 0;
		musicalnotetimer++;
		if (musicalnotetimer == 14)
		{
			musicalnotetimer = 0;
			anim = instance_create(((x + (sprite_width / 2)) - 10) + random(40), y, obj_afterimage);
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
		scr_enemy_drawidle_generic(0.16666666666666666);
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
			draw_text_ext_transformed(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 0, stringsetloc("Dancing!", "obj_sweet_enemy_slash_Draw_0_gml_81_0"), 9999, 9999, 0.7, 1, 0);
			draw_sprite(spr_musical_dancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + (sin(siner2 / 4) * 3) + xoffset, __view_get(e__VW.YView, 0) + yoffset + 386 + 0);
		}
		else if (danceCounter == 2)
		{
			draw_text_ext_transformed(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 0, stringsetloc("2 Turns!", "obj_sweet_enemy_slash_Draw_0_gml_86_0"), 9999, 9999, 0.7, 1, 0);
			draw_sprite(spr_musical_dancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + (sin(siner2 / 0.8) * 3) + xoffset, __view_get(e__VW.YView, 0) + yoffset + 386 + 0);
		}
		else
		{
			draw_text(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 0, stringsetloc("Not Dancing", "obj_sweet_enemy_slash_Draw_0_gml_91_0"));
			draw_sprite(spr_musical_notdancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + (sin(siner2 / 10) * 3) + xoffset, __view_get(e__VW.YView, 0) + yoffset + 386 + 0);
		}
	}
}
