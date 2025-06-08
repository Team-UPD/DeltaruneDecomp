if (other.collided == 0)
{
	slash = instance_create(other.x, other.y, obj_slashEffect);
	slash.image_angle = image_angle + 45;
	slash.depth = other.depth - 1;
	slash.image_xscale = 1;
	slash.image_yscale = 1;
	obj_queen_enemy.wirescut++;
	other.stopmoving = 1;
	other.sprite_index = spr_berdly_plug_target_burst;
	other.image_index = 0;
	other.image_speed = 0.5;
	if (obj_queen_enemy.phase == 1)
		obj_queen_throw_controller.bardlymercy += 12.5;
	if (obj_queen_enemy.phase == 2)
		obj_queen_throw_controller.bardlymercy += 8.333333333333334;
	if (obj_queen_enemy.phase == 3)
		obj_queen_throw_controller.bardlymercy += 6.25;
	if (obj_queen_enemy.phase == 4)
		obj_queen_throw_controller.bardlymercy += 5;
	if (other.good == 1)
	{
		global.msg[0] = stringsetloc("* The wire was cut!/%", "obj_queen_kristhrown_slash_Collision_7a76bce8_f6fc_4158_8ce1_58bb74085511_gml_23_0");
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
		global.msg[0] = stringsetloc("* The wire was cut!/%", "obj_queen_kristhrown_slash_Collision_7a76bce8_f6fc_4158_8ce1_58bb74085511_gml_42_0");
		hspeed = -12;
		vspeed = -4;
		gravity = 0.5;
		con = 2;
	}
	scr_battletext_default();
	other.collided = 1;
	collided = 1;
}
