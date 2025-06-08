if (state == 3)
{
	hurttimer -= 1;
	if (hurttimer < 0 && global.monster[myself] == 1)
	{
		state = 0;
	}
	else
	{
		if (global.monster[myself] == 0 && !i_ex(obj_writer))
		{
			hurtsprite = spr_berdly_hurt_kneel_battle;
			if (endbattle == 0)
			{
				endbattle = 1;
				if (global.flag[915] == 5 && global.flag[916] == 0)
				{
					instance_create(obj_heronoelle.x, obj_heronoelle.y, obj_berdlyb2_postBattle_noelle);
					scr_sideb_fail();
				}
				scr_wincombat();
			}
		}
		hurtshake += 1;
		if (hurtshake > 1)
		{
			if (shakex > 0)
				shakex -= 1;
			if (shakex < 0)
				shakex += 1;
			shakex = -shakex;
			hurtshake = 0;
		}
		draw_sprite_ext(hurtsprite, 0, x + shakex + hurtspriteoffx, y + hurtspriteoffy, 2, 2, 0, image_blend, 1);
	}
}
scr_enemy_drawidle_generic(0.16666666666666666);
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
