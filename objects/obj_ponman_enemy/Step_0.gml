if (global.monster[myself] == 1)
{
	if (global.mnfight == 1 && talked == 0)
	{
		if (global.mercymod[myself] < 100)
			scr_randomtarget();
		if (!instance_exists(obj_darkener))
			instance_create(0, 0, obj_darkener);
		global.typer = 50;
		global.msg[0] = stringsetloc(" ", "obj_ponman_enemy_slash_Step_0_gml_10_0");
		g = scr_enemyblcon(x - 160, y, 3);
		with (g.mywriter)
			instance_destroy();
		with (g)
			instance_destroy();
		talked = 1;
		talktimer = 0;
	}
	if (talked == 1 && global.mnfight == 1)
	{
		rtimer = 0;
		scr_blconskip(5);
		if (global.mnfight == 2)
		{
			if (!instance_exists(obj_moveheart))
				scr_moveheart();
			if (!instance_exists(obj_growtangle))
				instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		rtimer += 1;
		if (rtimer == 12)
		{
			global.turntimer = 150;
			pontotal = scr_monsterpop();
			for (i = 0; i < 3; i += 1)
			{
				if (global.monster[i] == 1 && global.mercymod[i] >= 100)
					pontotal -= 1;
			}
			if (pontotal == 3)
				maxshot = 3;
			if (pontotal == 2)
				maxshot = 4;
			if (pontotal == 1)
				maxshot = 5;
			if (pontotal <= 0)
			{
				global.turntimer = 10;
				maxshot = 6;
			}
			shotcount = 0;
			totalshotcount = 0;
			activetimer = 1;
			shotbuffer = 8;
			if (global.mercymod[myself] < 100)
				eyecon = 20;
			turns += 1;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			rr = choose(0, 1, 2, 3, 4);
			if (rr == 0)
				global.battlemsg[0] = stringsetloc("* Ponman advances one step at a time.", "obj_ponman_enemy_slash_Step_0_gml_64_0");
			if (rr == 1)
				global.battlemsg[0] = stringsetloc("* Ponman listens politely^1, despite having no ears.", "obj_ponman_enemy_slash_Step_0_gml_65_0");
			if (rr == 2)
				global.battlemsg[0] = stringsetloc("* Ponman seems hypnotized by your idle animation.", "obj_ponman_enemy_slash_Step_0_gml_66_0");
			if (rr == 3)
				global.battlemsg[0] = stringsetloc("* Ponman gazes enigmatically.", "obj_ponman_enemy_slash_Step_0_gml_67_0");
			if (rr == 4)
				global.battlemsg[0] = stringsetloc("* Smells like a pawn shop.", "obj_ponman_enemy_slash_Step_0_gml_68_0");
			if (global.monsterstatus[myself] == 1)
				global.battlemsg[0] = stringsetloc("* Ponman can't keep its eye open.", "obj_ponman_enemy_slash_Step_0_gml_69_0");
			if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
				global.battlemsg[0] = stringsetloc("* Ponman looks dilated.", "obj_ponman_enemy_slash_Step_0_gml_70_0");
			if (global.mercymod[myself] >= global.mercymax[myself])
				global.msg[0] = stringsetloc("* Ponman is sleeping soundly.", "obj_ponman_enemy_slash_Step_0_gml_71_0");
			if (global.monstercomment[myself] == "(Sleepy)")
				global.msg[0] = stringsetloc("* The enemies became SLEEPY from Ralsei's lullaby!", "obj_ponman_enemy_slash_Step_0_gml_72_0");
		}
		else
		{
			global.turntimer = 120;
		}
	}
	if (global.mnfight == 2)
	{
		if (global.turntimer <= 1)
		{
			if (battlecancel == 1)
				scr_mercyadd(myself, 100);
			if (battlecancel == 2)
			{
				with (obj_battlecontroller)
					noreturn = 1;
				con = 1;
				battlecancel = 3;
			}
		}
	}
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = stringsetloc("* PONMAN - AT 8 DF 0&* Its nucleus doubles as an eyespot./%", "obj_ponman_enemy_slash_Step_0_gml_106_0");
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		global.msg[0] = stringsetloc("* You whispered goodnight to Ponman^1.&* It fell asleep.../%", "obj_ponman_enemy_slash_Step_0_gml_114_0");
		sleeping = 1;
		scr_mercyadd(myself, 100);
		scr_battletext_default();
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		snd_pause(global.batmusic[1]);
		if (lullabied == 0)
		{
			singy = snd_play(snd_ralseising1);
			with (object_index)
				lullabied = 1;
		}
		else
		{
			singy = snd_play(snd_ralseising2);
			with (object_index)
				lullabied = 0;
		}
		global.msg[0] = stringsetloc("* Ralsei sang a soft and entrancing lullaby!/%", "obj_ponman_enemy_slash_Step_0_gml_134_0");
		with (obj_heroralsei)
			visible = 0;
		ralsing = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseib_sing);
		with (ralsing)
			image_speed = 0.2;
		lullatimer = 0;
		scr_battletext_default();
		actcon = 10;
	}
	if (acting == 4 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = stringsetloc("* You and Ralsei warned Ponman about Susie^1.&* The enemy went on guard.../%", "obj_ponman_enemy_slash_Step_0_gml_150_0");
		if (scr_monsterpop() > 1)
			global.msg[0] = stringsetloc("* You and Ralsei warned the enemies about Susie^1.&* Everyone went on guard./%", "obj_ponman_enemy_slash_Step_0_gml_152_0");
		for (i = 0; i < 3; i += 1)
		{
			global.monstercomment[i] = "(Warned)";
			global.automiss[i] = 1;
		}
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		actcon = 0;
		scr_attackphase();
	}
	if (actcon == 10)
	{
		lullatimer += 1;
		if (lullatimer >= 30)
			actcon = 11;
	}
	if (actcon == 11 && instance_exists(obj_writer) == false)
	{
		with (ralsing)
			instance_destroy();
		with (obj_heroralsei)
			visible = 1;
		snd_stop(singy);
		snd_resume(global.batmusic[1]);
		global.msg[0] = stringsetloc("* PONMAN fell asleep^1!&* The enemies became TIRED!/%", "obj_ponman_enemy_slash_Step_0_gml_186_0");
		if (scr_monsterpop() > 1 && scr_havechar(2))
		{
			for (dx = 0; dx < 3; dx += 1)
			{
				if (global.char[dx] == 2)
				{
					if (global.charcond[dx] != 5)
					{
						global.charcond[dx] = 5;
						global.faceaction[dx] = 9;
						global.charmove[dx] = 0;
						global.msg[0] = stringsetloc("* PONMAN fell asleep^1!&* SUSIE fell asleep^1!&* The enemies became TIRED!/%", "obj_ponman_enemy_slash_Step_0_gml_198_0");
					}
				}
			}
		}
		sleeping = 1;
		scr_mercyadd(myself, 100);
		with (obj_monsterparent)
		{
			global.monstercomment[myself] = "(Sleepy)";
			global.monsterstatus[myself] = 1;
		}
		scr_battletext_default();
		actcon = 1;
	}
}
if (global.myfight == 7)
	hspeed = 15;
if (sleeping == 1)
	eyecon = 999;
if (eyecon == 0)
{
	eye_angle = 180 + (sin(siner / 8) * 30);
	if (eye_radius < 8)
		eye_radius += 2;
	else
		eye_radius = 8;
	if (addup == 0)
		image_index = 1;
	else
		image_index = 3;
	if (eye_angle > 200)
	{
		image_index = 0;
		addup = 1;
	}
	if (eye_angle < 160)
	{
		image_index = 2;
		addup = 0;
	}
}
if (eyecon == 10)
{
	activetimer = 0;
	with (obj_regularbullet)
	{
		active = 0;
		image_alpha -= 0.1;
	}
	image_index = 0;
	eye_radius *= 0.7;
	if (abs(eye_radius) < 0.5)
	{
		eye_radius = 0;
		eye_angle = 0;
	}
	if (global.turntimer <= 1)
		eyecon = 0;
}
if (eyecon == 20)
{
	if (spinspeed < 10)
		spinspeed += 1;
	if (pontotal > 1)
		siner += (spinspeed / 8);
	else
		siner += (spinspeed / 20);
	eye_angle = 180 + (sin(siner / 8) * 70);
	if (eye_radius < 8)
		eye_radius += 1;
	grandbuffer -= 1;
	if (instance_exists(obj_heart))
		x_angle = point_direction(eyex + 28 + x, eyey + 32 + y, obj_heart.x + 8, obj_heart.y + 8);
	else
		x_angle = 0;
	if (abs(x_angle - eye_angle) < 25 && eye_angle >= 120 && eye_angle <= 240)
	{
		if (shotbuffer < 0 && shotcount < 3 && totalshotcount < maxshot)
		{
			shotcount += 1;
			if (pontotal == 2)
				shotcount += 1;
			if (pontotal == 3)
				shotcount += 1;
			if (shotcount >= 3)
			{
				totalshotcount += 1;
				shotcount = 0;
				if (pontotal == 1)
					shotbuffer = 10;
				if (pontotal == 2)
					shotbuffer = 13;
				if (pontotal == 3)
					shotbuffer = 22;
			}
			if (totalshotcount >= maxshot)
				maxtimer = 1;
			snd_play(snd_hurt1);
			bul = instance_create(eyex + 28 + x, eyey + 32 + y, obj_regularbullet);
			bul.speed = 2;
			bul.timepoints = 2.5;
			bul.target = mytarget;
			bul.damage = global.monsterat[myself] * 5;
			bul.friction = -0.11;
			if (pontotal == 1)
				bul.friction = -0.12;
			bul.direction = eye_angle;
			with (bul)
			{
				sprite_index = spr_diamondbullet;
				image_angle = direction;
			}
		}
	}
	if (maxtimer > 0)
		maxtimer += 1;
	if (global.turntimer < 10)
		eyecon = 10;
}
siner += 1;
shotbuffer -= 1;
if (becomesleep == 1)
{
	eyecon = 999;
	sleeping = 1;
	becomesleep = 0;
	sleep_index = 5;
}
if (eye_angle < 0)
	eye_angle += 360;
if (eye_angle > 360)
	eye_angle -= 360;
eyex = lengthdir_x(eye_radius, eye_angle);
eyey = lengthdir_y(eye_radius, eye_angle);
