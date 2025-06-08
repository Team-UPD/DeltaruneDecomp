if (hurtstate2 == 1)
{
	draw_sprite_ext(spr_hatguy_dance, 0, x, y, 2, 2, 0, c_white, 1);
	exit;
}
if (state == 3)
	scr_enemy_drawhurt_generic();
if (state == 0)
{
	if (dancing)
	{
		siner += 0.16666666666666666;
		draw_monster_body_part(spr_hatguy_dance, siner, x, y);
		musicalnotetimer++;
		if (musicalnotetimer == 14)
		{
			musicalnotetimer = 0;
			anim = instance_create(((x + (sprite_width / 2)) - 20) + random(40), y, obj_afterimage);
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
			draw_text_ext_transformed(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + 60 + yoffset, stringsetloc("Dancing!", "obj_hatguy_enemy_slash_Draw_0_gml_60_0"), 9999, 9999, 0.7, 1, 0);
			draw_sprite(spr_musical_dancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + xoffset + (sin(siner2 / 4) * 3), __view_get(e__VW.YView, 0) + 386 + yoffset + 60);
		}
		else if (danceCounter == 2)
		{
			draw_text_ext_transformed(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 60, stringsetloc("2 Turns!", "obj_hatguy_enemy_slash_Draw_0_gml_65_0"), 9999, 9999, 0.7, 1, 0);
			draw_sprite(spr_musical_dancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + xoffset + (sin(siner2 / 0.8) * 3), __view_get(e__VW.YView, 0) + 386 + yoffset + 60);
		}
		else
		{
			draw_text(__view_get(e__VW.XView, 0) + 258 + xoffset, __view_get(e__VW.YView, 0) + 369 + yoffset + 60, stringsetloc("Not Dancing", "obj_hatguy_enemy_slash_Draw_0_gml_70_0"));
			draw_sprite(spr_musical_notdancing_ui, 0, __view_get(e__VW.XView, 0) + 228 + xoffset + (sin(siner2 / 10) * 3), __view_get(e__VW.YView, 0) + 386 + yoffset + 60);
		}
	}
}
