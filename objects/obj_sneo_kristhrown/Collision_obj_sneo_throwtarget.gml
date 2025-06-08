if (other.collided == 0)
{
	slash = instance_create(other.x, other.y, obj_slashEffect);
	slash.image_angle = image_angle + 45;
	slash.depth = other.depth - 1;
	slash.image_xscale = 1;
	slash.image_yscale = 1;
	other.stopmoving = 1;
	other.sprite_index = spr_sneo_c_weakpoint_burst;
	other.image_index = 0;
	other.image_speed = 0.5;
	vine = instance_create(x, y, obj_sneo_vine_cut);
	vine.x1 = obj_sneo_throwkris_vine_controller.x1[other.vineid];
	vine.x2 = obj_sneo_throwkris_vine_controller.x2[other.vineid];
	vine.y1 = obj_sneo_throwkris_vine_controller.y1[other.vineid];
	vine.y2 = obj_sneo_throwkris_vine_controller.y2[other.vineid];
	vine.x4 = vine.x2;
	vine.y4 = vine.y2;
	vine.x2 = other.x;
	vine.y2 = other.y;
	vine.x3 = other.x;
	vine.y3 = other.y;
	vine.depth = obj_spamton_neo_enemy.depth + 1;
	vine.type = 1;
	vine.vineid = other.vineid;
	obj_sneo_throwkris_vine_controller.visiblevine[other.vineid] = 0;
	if (other.good == 1)
	{
		global.msg[0] = stringsetloc("* The wire was cut!/%", "obj_sneo_kristhrown_slash_Collision_62cd1353_c3fa_4ba1_acea_aa0a3fa3dd95_gml_35_0");
		snd_play(snd_coin);
		with (other)
		{
			if (offing == 1)
				con = 1;
			else
				con = 5;
		}
	}
	else
	{
		snd_play(snd_noise);
		with (other)
			con = 7;
		global.msg[0] = stringsetloc("* The wire was cut!/%", "obj_sneo_kristhrown_slash_Collision_62cd1353_c3fa_4ba1_acea_aa0a3fa3dd95_gml_55_0");
		hspeed = -12;
		vspeed = -4;
		gravity = 0.5;
		con = 2;
	}
	scr_battletext_default();
	other.collided = 1;
	collided = 1;
}
