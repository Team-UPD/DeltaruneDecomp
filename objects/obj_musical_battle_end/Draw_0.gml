draw_set_color(c_black);
draw_rectangle(xx - 10, yy - 10, xx + 999, yy + 999, false);
if (con == 0)
{
	drawground = 0;
	auto = 1;
	song1 = snd_init("cyber_battle_end.ogg");
	song2 = mus_play(song1);
	marker[0] = scr_dark_marker(xx, yy - 200, spr_kris_dance);
	if (global.hp[1] < 1)
	{
		marker[0].sprite_index = spr_kris_fallen_dark;
		marker[0].y -= 2;
	}
	marker[1] = scr_dark_marker(xx, yy - 200, spr_susie_dance);
	marker[2] = scr_dark_marker(xx, yy - 200, spr_ralsei_dance);
	marker[3] = instance_create(xx, yy - 200, obj_sweet_npc);
	marker[3].dancing = 1;
	marker[4] = instance_create(xx, yy - 200, obj_kk_npc);
	marker[4].dancing = 1;
	marker[5] = instance_create(xx, yy - 200, obj_hatguy_npc);
	marker[5].dancing = 1;
	marker[6] = instance_create(xx, yy - 80, obj_musicenemy_dancer_end);
	marker[7] = instance_create(xx, yy - 80, obj_musicenemy_dancer_end);
	marker[8] = instance_create(xx, yy - 80, obj_musicenemy_dancer_end);
	for (i = 0; i < 9; i++)
	{
		markeroffsety[i] = 0;
		markeroffsetx[i] = 0;
		marker[i].depth = depth - 500;
		marker[i].image_speed = 0.24000000000000002;
		if (i >= 6)
		{
			image_xscale = 4;
			image_yscale = 4;
		}
	}
	markeroffsetx[0] = 6;
	markeroffsety[0] = 24;
	if (global.hp[1] < 0)
		markeroffsety[0] = 12;
	markeroffsety[4] = -36;
	markeroffsetx[4] = -40;
	markeroffsetx[5] = -12;
	framecount = 0;
	con = 9;
}
if (con == 10 || con == 11 || con == 12)
{
	drawground = 1;
	for (i = 0; i < 9; i++)
		marker[i].y = -200;
	marker[con - 10].y = cy + markeroffsety[con - 10];
	marker[con - 10].x = (cx - 140) + (sin(siner / 8) * 10) + markeroffsetx[con - 10];
	if (global.hp[1] < 0 && con == 10)
		marker[con - 10].x = (cx - 140) + 0 + markeroffsetx[con - 10];
	marker[(con - 10) + 3].y = cy + markeroffsety[(con - 10) + 3];
	marker[(con - 10) + 3].x = cx + 80 + (sin(siner / 8) * 10) + markeroffsetx[(con - 10) + 3];
}
if (con == 13 || con == 15)
{
	drawground = 0;
	for (i = 0; i < 6; i++)
		marker[i].y = -200;
	for (i = 6; i < 9; i++)
	{
		marker[i].x = (cx - 100) + (100 * (i - 6));
		marker[i].y = cy;
	}
}
if (con == 14)
{
	drawground = 0;
	for (i = 0; i < 9; i++)
		marker[i].y = -100;
	for (i = 0; i < 6; i++)
	{
		marker[i].x = ((cx + (sin(((i * 3.14) / 3) + (siner / 20)) * 200)) - 50) + markeroffsetx[i];
		marker[i].y = cy + (cos(((i * 3.14) / 3) + (siner / 20)) * 100) + markeroffsety[i];
		marker[i].depth = -200 - marker[i].y;
	}
}
if (con == 16)
{
	with (obj_musicenemy_dancer_end)
		visible = false;
	drawground = 0;
	jumptimer = 0;
	mx = 0;
	for (i = 0; i < 9; i++)
	{
		marker[i].y = yy + 500 + markeroffsety[i];
		marker[i].x = xx + mx + 40;
		jumped[i] = 0;
		marker[i].speed = 0;
		marker[i].gravity = 0;
		mx += 80;
		if (i == 4)
			mx += 80;
	}
}
if (con == 17)
{
	jumptimer++;
	for (i = 0; i < 6; i++)
	{
		if (jumptimer > (i * 2) && jumped[i] == 0)
		{
			marker[i].vspeed = -30;
			marker[i].gravity = 2;
			jumped[i] = 1;
		}
		if (marker[i].vspeed >= 4 && jumped[i] == 1)
		{
			marker[i].vspeed = 0;
			marker[i].gravity = 0;
			marker[i].jumped[i] = 2;
		}
	}
}
if (con == 18)
{
	if (jumped[0] < 3)
	{
		if (global.hp[1] > 0)
		{
			marker[0].sprite_index = spr_kris_pose;
			marker[0].y -= 18;
		}
		marker[1].sprite_index = spr_susie_pose;
		marker[2].sprite_index = spr_ralsei_pose;
		for (i = 0; i < 20; i++)
		{
			note = instance_create(cx + random_range(-100, 100), (cy - 50) + random_range(-50, 50), obj_afterimage);
			note.sprite_index = spr_musical_notes;
			note.gravity = 0.4 + random(0.2);
			note.vspeed = -2 - random(5);
			note.hspeed = random_range(-4, 4);
			note.depth = -500;
			note.image_alpha = 2;
		}
		jumped[0] = 3;
	}
	marker[3].updatetimer = 0;
	marker[4].updatetimer = 0;
	marker[5].updatetimer = 0;
	marker[3].dancetimer = 0;
	marker[4].dancetimer = 0;
	marker[5].dancetimer = 0;
	marker[3].siner = 0;
	marker[4].siner = 0;
	marker[5].siner = 0;
	marker[3].musicalnotetimer = 0;
	marker[4].musicalnotetimer = 0;
	marker[5].musicalnotetimer = 0;
	battlewonstring = stringsetloc("BATTLE WON!", "obj_musical_battle_end_slash_Draw_0_gml_205_0");
	draw_set_font(fnt_mainbig);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text_transformed(cx, cy - 100, battlewonstring, 2, 3, 0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
if (con >= 19)
{
	marker[3].updatetimer = 0;
	marker[4].updatetimer = 0;
	marker[5].updatetimer = 0;
	marker[3].dancetimer = 0;
	marker[4].dancetimer = 0;
	marker[5].dancetimer = 0;
	marker[3].siner = 0;
	marker[4].siner = 0;
	marker[5].siner = 0;
	marker[3].musicalnotetimer = 0;
	marker[4].musicalnotetimer = 0;
	marker[5].musicalnotetimer = 0;
	if (global.hp[1] > 0)
		marker[0].sprite_index = spr_kris_pose;
	marker[1].sprite_index = spr_susie_pose;
	marker[2].sprite_index = spr_ralsei_pose;
}
if (con == 19)
{
	con = 20;
	instance_create(x, y, obj_musical_battle_end_fade_out);
}
if (con == 21)
{
	with (obj_sweet_enemy)
		endcon = 4;
	var a = 0;
	repeat (9)
	{
		with (marker[a])
			instance_destroy();
		a++;
	}
	instance_destroy();
}
if (drawground)
{
	draw_set_color(merge_color(c_navy, c_ltgray, 0.5));
	draw_ellipse(cx - 200, cy + 100, cx + 200, cy + 40, false);
}
if (auto == 1)
{
	if (framecount == 57)
		con = 10;
	if (framecount == 115)
		con = 11;
	if (framecount == 172)
		con = 12;
	if (framecount == 236)
		con = 13;
	if (framecount == 288)
		con = 14;
	if (framecount == 432)
		con = 15;
	if (framecount == 460)
		con = 16;
	if (framecount == 461)
		con = 17;
	if (framecount == 518)
		con = 18;
	if (framecount == 620)
		con = 19;
	if (framecount == 642)
		con = 21;
}
if (framecount == 237 || framecount == 246 || framecount == 252 || framecount == 259 || framecount == 270 || framecount == 276 || framecount == 432 || framecount == 439 || framecount == 442 || framecount == 448 || framecount == 454)
{
	with (obj_musicenemy_dancer_end)
		active = 1;
}
if (scr_debug())
{
	if (right_p())
		con++;
	if (left_p())
		con--;
}
framecount++;
siner++;
