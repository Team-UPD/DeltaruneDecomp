timer++;
image_alpha = 0.25;
if (instance_exists(obj_growtangle))
{
	if (x >= ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 16))
	{
		hspeed = -abs(hspeed);
		x -= 4;
	}
	if (x <= (obj_growtangle.x - (obj_growtangle.sprite_width / 2)))
	{
		hspeed = abs(hspeed);
		x += 4;
	}
}
if (mode == 0)
{
	if (timer >= 30)
	{
		with (obj_heart)
			wspeed = 5;
		bul = instance_create(x, 480, obj_collidebullet);
		bul.sprite_index = spr_musicenemy_musicbar;
		bul.vspeed = -4;
		bul.active = 1;
		bul.mask_index = spr_musicenemy_musicbar_mask;
		hspeed = random_range(-3, 3);
		timer = 0;
	}
}
if (mode == 1)
{
	if (timer >= 14)
	{
		with (obj_heart)
			wspeed = 6;
		triple = choose(0, 1);
		triple = 1;
		if (triple == 1)
		{
			event_user(0);
			with (bul[choose(0, 1, 2)])
				instance_destroy();
		}
		if (triple == 0)
		{
			bul = instance_create(x, 480, obj_collidebullet);
			bul.sprite_index = spr_musicenemy_damagebox;
			bul.x = obj_growtangle.x + choose(-15, 15);
			bul.gravity = -0.1;
			bul.vspeed = -4;
			bul.image_yscale = 8;
			bul.image_xscale = 1.5;
			bul.active = 1;
		}
		hspeed = random_range(-4, 4);
		timer = 0;
	}
}
if (input_memorizer == 1)
{
	with (obj_heart)
		wspeed = 8;
	timer = 0;
	input_memorizer = 2;
	framecount = 0;
	pressed[0] = 0;
	pressed[1] = 0;
	pressed[2] = 0;
	mybutton[0] = ord("Z");
	mybutton[1] = ord("X");
	mybutton[2] = ord("C");
	remframecount[0] = 0;
	remframecount[1] = 0;
	remframecount[2] = 0;
	for (i = 0; i < 3; i++)
	{
		for (j = 0; j < 3; j++)
			mybul[i][j] = -1;
	}
	file = file_text_open_write("bulletpattern.txt");
}
if (input_memorizer == 2)
{
	framecount++;
	timer = 0;
	if (keyboard_check_pressed(vk_space))
		file_text_close(file);
	makebullet = 0;
	which = 0;
	for (i = 0; i < 3; i++)
	{
		if (keyboard_check(mybutton[i]) && pressed[i] == 1)
		{
			with (mybul[i][0])
				image_yscale += 0.5;
			with (mybul[i][1])
				image_yscale += 0.5;
			with (mybul[i][2])
				image_yscale += 0.5;
		}
		if (keyboard_check(mybutton[i]) && pressed[i] == 0)
		{
			remframecount[i] = framecount;
			event_user(0);
			mybul[i][0] = bul[0];
			mybul[i][1] = bul[1];
			mybul[i][2] = bul[2];
			with (bul[i])
				instance_destroy();
			pressed[i] = 1;
		}
		if (keyboard_check_released(mybutton[i]))
		{
			finalheight = 1;
			if (i_ex(mybul[i][0]))
				finalheight = mybul[i][0].image_yscale;
			if (i_ex(mybul[i][1]))
				finalheight = mybul[i][1].image_yscale;
			if (i_ex(mybul[i][2]))
				finalheight = mybul[i][2].image_yscale;
			file_text_write_real(file, remframecount[i]);
			file_text_write_string(file, ",");
			file_text_write_real(file, i);
			file_text_write_string(file, ",");
			file_text_write_real(file, finalheight);
			file_text_writeln(file);
			pressed[i] = 0;
		}
	}
}
if (mode == 3)
{
	if (mframecount >= remframe)
	{
		event_user(0);
		bul[0].image_yscale = bullet_height[bulletcount];
		bul[1].image_yscale = bullet_height[bulletcount];
		bul[2].image_yscale = bullet_height[bulletcount];
		with (bul[bullet_pos[bulletcount]])
			instance_destroy();
		bulletcount++;
		remframe = bullet_frame[bulletcount];
	}
	mframecount++;
	if (bulletcount >= bulletmax)
	{
		bulletcount = 0;
		mframecount = 0;
		remframe = 15;
	}
}
