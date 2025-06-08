if (con == 0)
{
	with (obj_camera_area)
		instance_destroy();
	with (obj_camera_advanced)
	{
		targetYRelative[1] = -180;
		lerpTime[1] = 2;
		panSpeedInit[1] = 32;
		panSpeedMax[1] = 36;
	}
	with (obj_saucer)
	{
		if (i_ex(collider))
		{
			with (collider)
				instance_destroy();
		}
	}
	with (obj_caterpillarchara)
		visible = false;
	with (obj_mainchara)
		visible = false;
	dogtable = instance_create(320, 3080, obj_dogtable_controlled);
	dogtable.vspeed = -16;
	con++;
}
if (tablespawn == true)
{
	instance_create(166, 320, obj_saucer_dining3Spawner);
	instance_create(270, 320, obj_saucer_dining3Spawner);
	instance_create(374, 320, obj_saucer_dining3Spawner);
	tablespawn = false;
}
if (con == 2)
{
	for (var i = 0; i < 3; i++)
	{
		shade = instance_create(166 + (i * 104), 364, obj_marker);
		shade.sprite_index = spr_saucershadow;
		shade.image_alpha = 0.25;
		shade.image_xscale = 2;
		shade.image_yscale = 2;
		shade.depth = 890000;
	}
	with (obj_caterpillarchara)
		visible = false;
	with (obj_mainchara)
		visible = false;
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	with (obj_dogtable_controlled)
		drawtype = 1;
	dog = remdog;
	memx = dog.x;
	memy = dog.y;
	cutscene_master.save_object[0] = dog;
	con++;
}
if (con == 3)
{
	con = -999;
	c_soundplay(snd_impact);
	c_var_instance(dog, "x", memx);
	c_var_instance(dog, "y", memy);
	c_shake();
	c_var_instance(dog, "depth", 890000);
	c_sel(kr);
	c_setxy(dog.x - 21, dog.y - 60);
	c_sel(ra);
	c_setxy(dog.x - 60, dog.y - 76);
	c_sel(su);
	c_setxy(dog.x + 12, dog.y - 82);
	c_sel(kr);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_kris_jump_ball);
	c_jump(300, 230, 20, 30);
	c_sel(ra);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_ralsei_jump_ball);
	c_imagespeed(1);
	c_jump(254, 190, 20, 30);
	c_sel(su);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_susie_dw_jump_ball);
	c_jump(338, 186, 20, 30);
	c_wait(15);
	c_wait(15);
	c_sel(kr);
	c_imagespeed(0.25);
	c_sprite(spr_kris_dw_landed);
	c_sel(ra);
	c_imagespeed(0.25);
	c_imageindex(0);
	c_sprite(spr_teacup_ralsei_land);
	c_sel(su);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_susie_dw_landed);
	c_var_lerp_instance(dog, "x", memx, 704, 16);
	c_wait(6);
	c_var_instance(id, "tablespawn", true);
	c_wait(6);
	c_sel(ra);
	c_facing("r");
	c_autowalk(1);
	c_sel(kr);
	c_facing("u");
	c_autowalk(1);
	c_sel(su);
	c_facing("d");
	c_autowalk(1);
	c_wait(15);
	c_sel(su);
	c_autowalk(1);
	c_facing("d");
	c_sel(ra);
	c_facing("r");
	c_sel(su);
	c_wait(10);
	c_sprite(spr_susie_pose);
	c_speaker("susie");
	c_msgsetloc(0, "\\E9* Hahah^1, was that awesome or what?!/", "obj_controller_dininghall_slash_Step_0_gml_146_0");
	c_facenext("ralsei", "K");
	c_msgnextloc("\\EK* Umm^1, maybe minus the blatant destruction.../%", "obj_controller_dininghall_slash_Step_0_gml_149_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("d");
	c_sel(su);
	c_facing("d");
	c_wait(6);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Let's go^1, Kris^1! We're almost at the third floor!/%", "obj_controller_dininghall_slash_Step_0_gml_160_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("d");
	c_actortokris();
	c_actortocaterpillar();
	c_var_instance(id, "con", 4);
	c_terminatekillactors();
}
if (con == 4)
{
	with (obj_dogtable_controlled)
		instance_destroy();
	with (obj_mainchara)
		visible = true;
	with (obj_caterpillarchara)
		visible = true;
	global.flag[7] = 0;
	global.interact = 0;
	global.flag[382] = 1;
	alarm[0] = 1;
	con++;
}
