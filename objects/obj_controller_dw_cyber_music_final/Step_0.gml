timer++;
if (i_ex(movingwall1))
	movingwall1.x = obj_MovingPlat_dw_cyber_music_final.x;
if (state == 0 && obj_mainchara.x >= 480)
{
	timer = 0;
	with (obj_fakeWalkway_dw_cyber_music_final)
		instance_destroy();
	snd_play(snd_impact);
	instance_create(0, 0, obj_shake);
	movingwall1 = instance_create(obj_MovingPlat_dw_cyber_music_final.x, obj_MovingPlat_dw_cyber_music_final.y, obj_invisMovingWall_dw_cyber_music_final);
	movingwall1.image_xscale = 2;
	movingwall1.image_yscale = 2;
	movingwall1.image_alpha = 0;
	global.flag[7] = 1;
	global.interact = 1;
	state = 1;
}
if (state == 1)
{
	with (obj_caterpillarchara)
	{
		if (image_alpha > 0.1)
			image_alpha *= 0.6;
		else
			image_alpha = 0;
	}
	if (timer >= 10)
		state = 2;
}
if (state == 2)
{
	obj_mainchara.x += 16;
	obj_MovingPlat_dw_cyber_music_final.x += 16;
	if (obj_MovingPlat_dw_cyber_music_final.x >= 640)
	{
		timer = 0;
		bulletarea = instance_create(648, 200, obj_overworld_bulletarea);
		bulletarea.image_xscale = 7;
		bulletarea.image_yscale = 5;
		state = 2.1;
	}
}
if (state == 2.1)
{
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	state = 2.11;
}
if (state == 2.11)
{
	state = -999;
	c_pannable(1);
	c_panobj(84, 1);
	c_wait(1);
	c_pannable(0);
	c_var_instance(id, "state", 2.2);
	c_terminatekillactors();
}
if (state == 2.2)
{
	global.interact = 0;
	state = 3;
}
if (state == 3)
{
	with (obj_caterpillarchara)
	{
		x = room_width * 2;
		y = room_height * 2;
		scr_caterpillar_interpolate();
	}
	with (obj_parallaxer_layer)
		auto -= 1;
	obj_cyber_music_battleBullets.active = true;
	obj_mainchara.cutscene = 1;
	global.interact = 0;
	if (obj_cyber_music_battleBullets.sndinit == 2)
	{
		with (bulletarea)
		{
			x = room_width;
			y = room_height;
		}
		state = 4;
		timer = 0;
	}
}
if (state == 4)
{
	obj_mainchara.x += 16;
	camerax_set(camerax() + 16);
	obj_MovingPlat_dw_cyber_music_final.x += 16;
	if (obj_MovingPlat_dw_cyber_music_final.x >= 1640)
	{
		obj_MovingPlat_dw_cyber_music_final.x = 1640;
		timer = 0;
		snd_play(snd_impact);
		with (movingwall1)
			instance_destroy();
		endwall = instance_create(1600, 120, obj_soliddark);
		endwall.image_xscale = 1;
		endwall.image_yscale = 7;
		state = 5;
	}
}
if (state == 5)
{
	global.interact = 1;
	if (obj_mainchara.x < 1640)
		obj_mainchara.x = 1640;
	with (obj_caterpillarchara)
		x = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	state = 6;
}
if (state == 6)
{
	state = -999;
	c_panobj(kr_actor, 8);
	c_sel(su);
	c_visible(false);
	c_setxy(1710, 174);
	c_sel(ra);
	c_visible(false);
	c_setxy(1812, 174);
	c_var_instance(id, "state", 7);
	c_wait(8);
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (state == 7)
{
	if (!i_ex(obj_cutscene_master))
	{
		global.flag[7] = 0;
		global.interact = 0;
		state++;
	}
}
if (state == 8)
{
	with (obj_caterpillarchara)
	{
		if (image_alpha < 1)
			image_alpha += 0.1;
	}
}
