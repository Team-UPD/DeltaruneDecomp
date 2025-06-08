with (obj_ch2_scene11a)
{
	with (coaster_berdly)
		visible = false;
	with (coaster_kris)
	{
		con = 0;
		actor.sprite_index = spr_krisr_dark;
		character_sprite = spr_krisr_dark;
		visible = false;
	}
	with (coaster_susie)
	{
		con = 0;
		actor.sprite_index = spr_susie_walk_right_dw;
		character_sprite = spr_susie_walk_right_dw;
		visible = false;
	}
	with (coaster_ralsei)
	{
		con = 0;
		actor.sprite_index = spr_ralsei_walk_right;
		character_sprite = spr_ralsei_walk_right;
		visible = false;
	}
}
with (obj_heroparent)
	visible = true;
with (o_coaster_hero)
	visible = true;
with (o_coaster_hero_back)
	visible = true;
with (o_coaster_berdly)
	visible = true;
with (obj_berdlyb_enemy)
	visible = true;
with (obj_coaster)
	stop_siner = 0;
