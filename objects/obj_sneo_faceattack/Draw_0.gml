if (init == 1)
{
	if (type == 1 && obj_spamton_neo_enemy.eyeshp > 0)
		image_blend = merge_color(c_purple, blue_col, obj_spamton_neo_enemy.eyeshp / 16);
	if (type == 2 && obj_spamton_neo_enemy.nosehp > 0)
		image_blend = merge_color(c_purple, blue_col, obj_spamton_neo_enemy.nosehp / 16);
	if (type == 3 && obj_spamton_neo_enemy.mouthhp > 0)
		image_blend = merge_color(c_purple, blue_col, obj_spamton_neo_enemy.mouthhp / 16);
	if ((type == 1 && obj_spamton_neo_enemy.eyeshp < 1) || (type == 1 && image_index == 2))
		image_blend = c_white;
	if ((type == 2 && obj_spamton_neo_enemy.nosehp < 1) || (type == 2 && image_index == 2))
		image_blend = c_white;
	if ((type == 3 && obj_spamton_neo_enemy.mouthhp < 1) || (type == 3 && image_index == 4))
		image_blend = c_white;
	if (shootflashtimer > 0)
	{
		image_blend = c_yellow;
		shootflashtimer--;
	}
	if (hurtflashtimer > 0)
	{
		image_blend = c_red;
		hurtflashtimer--;
	}
	var hidesprite = 0;
	if (invincibilitytimer > 0)
	{
		if (invincibilitytimer == 10 || invincibilitytimer == 9 || invincibilitytimer == 6 || invincibilitytimer == 5 || invincibilitytimer == 3 || invincibilitytimer == 2)
			hidesprite = 1;
		invincibilitytimer--;
		image_blend = c_red;
	}
	if (hidesprite == 0)
		draw_self();
	draw_sprite_ext(spr_battlebg_0, 0, x - 3, y + 70, 2.4, 2, 0, blend, 1);
}
