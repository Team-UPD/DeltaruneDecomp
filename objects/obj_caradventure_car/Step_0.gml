if (active)
{
	scr_depth();
	block = 0;
	if (!pause_x_move)
		hspeed = 6;
	else
		hspeed = 0;
	__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + hspeed);
	var canmove = true;
	if (room == room_dw_city_traffic_4)
	{
		if (x < 1080)
			canmove = false;
	}
	if (canmove)
	{
		if (y > 120 && up_h())
			y -= 5;
		if (y < 240 && down_h())
			y += 5;
	}
	if (left_h() && x > (camerax() + 20))
	{
		x -= 3;
		if (hits < 4)
			block = 1;
	}
	if (right_h() && x < (camerax() + 100))
		x += 6;
	if (instance_exists(obj_mainchara))
	{
		obj_mainchara.x = x + 85;
		obj_mainchara.y = y;
	}
	cartimer++;
	if (cartimer >= (carthreshold - min(hits / 2, 6)) && talktimer < 860)
	{
		var y_pos = 0;
		var random_y = irandom(1);
		if (bananamode)
			y_pos = (random_y == 0) ? random_range(110, 150) : random_range(260, 280);
		else
			y_pos = 100 + random(180);
		y_pos = clamp(y_pos, 140, 366);
		car = instance_create(camerax() + 700, y_pos, obj_caradventure_car_enemy);
		with (car)
			scr_depth();
		if (hits < 4)
		{
			car.hspeed = car.hspeed - 1;
			car.hspeed -= 6;
			car.image_xscale *= -1;
		}
		cartimer = 0;
		carcount++;
	}
	if (triggertalk == 1)
	{
		talkshowtimer = 120;
		triggertalk = 0;
	}
	talktimer++;
	if (talktimer == 30)
	{
		if (remy == y)
		{
			triggertalk = 1;
			scr_speaker("queen");
			global.fe = 1;
			if (global.is_console || obj_gamecontroller.gamepad_active)
			{
				msgsetloc(0, "\\E0* Kris Press Directional Buttons To Steer/%", "obj_caradventure_car_slash_Step_0_gml_80_0_b");
				if (os_type == os_ps4 || os_type == os_ps5)
				{
					if (global.lang == "ja")
						msgsetloc(0, "\\E0* Kris Press Directions To Steer/%", "obj_caradventure_car_slash_Step_0_gml_57_0");
				}
			}
			else
			{
				msgsetloc(0, "\\E0* Kris Press Directions To Steer/%", "obj_caradventure_car_slash_Step_0_gml_57_0");
			}
			var d = d_make();
			d.side = 1;
			d.zurasu = 1;
		}
		else
		{
			cartimer += 90;
			talktimer += 90;
		}
	}
	if (talktimer == 120)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\EE* Kris Don't Hit The Cars!/%", "obj_caradventure_car_slash_Step_0_gml_80_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer < 270 && hits == 1 && hittalk == 0)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		hittalk = 1;
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Haha Okay Actually Hit All The Cars/%", "obj_caradventure_car_slash_Step_0_gml_98_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 300)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* So Much Traffic Isn't It Wonderful/%", "obj_caradventure_car_slash_Step_0_gml_115_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 360)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\ED* Lightners Love Traffic They Look It Up All The Time/%", "obj_caradventure_car_slash_Step_0_gml_131_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 450)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\EB* Poor Noelle She Would Love Hitting All These Cars/%", "obj_caradventure_car_slash_Step_0_gml_147_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 540)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("noelle");
		global.fe = 8;
		msgsetloc(0, "\\E2* Umm^1, actually^1, I... she^1, um^1, might not^1, um.../%", "obj_caradventure_car_slash_Step_0_gml_164_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 640)
	{
		if (instance_exists(obj_writer))
		{
			with (obj_writer)
				forcebutton1 = 1;
		}
		bananamode = 1;
		triggertalk = 1;
		scr_speaker("queen");
		global.fe = 1;
		msgsetloc(0, "\\EH* Stop Everything/%", "obj_caradventure_car_slash_Step_0_gml_179_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 700)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		banana = instance_create(__view_get(e__VW.XView, 0) + 660, 240, obj_caradventure_object);
		scr_speaker("queen");
		msgsetloc(0, "\\E0* Kris Get The Banana/%", "obj_caradventure_car_slash_Step_0_gml_198_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 900 && bananahit == 0)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\EF* Kris You Are Going To Get Sick/%", "obj_caradventure_car_slash_Step_0_gml_216_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 1000)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		triggertalk = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Here Comes A Crossing Get Ready To Stop/%", "obj_caradventure_car_slash_Step_0_gml_233_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	if (talktimer == 1060)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		finish_convo = true;
	}
}
else
{
	hspeed = 0;
}
