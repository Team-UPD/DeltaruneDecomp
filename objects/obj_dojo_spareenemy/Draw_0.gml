if (global.flag[20] == 0)
	idlesprite = shaved ? spr_npc_puzzlepiece_shaved_frown : spr_npc_puzzlepiece;
if (global.flag[20] == 1)
	idlesprite = shaved ? spr_npc_puzzlepiece_shaved_happy : spr_npc_puzzlepiece_happy;
if (global.flag[20] == 2)
	idlesprite = shaved ? spr_npc_puzzlepiece_shock2_shaved : spr_npc_puzzlepiece_shock2;
if (global.flag[20] == 3)
	idlesprite = shaved ? spr_npc_puzzlepiece_shock1_shaved : spr_npc_puzzlepiece_shock1;
hurtsprite = shaved ? spr_npc_puzzlepiece_shock2_shaved : spr_npc_puzzlepiece_shock2;
if (state == 3)
{
	scr_enemyhurt_tired_after_damage(0.5);
	hurttimer -= 1;
	if (hurttimer < 0)
	{
		state = 0;
	}
	else
	{
		if (global.monster[myself] == 0)
		{
			defeatanim = instance_create(x, y, obj_launchanim);
			defeatanim.sprite_index = sprite_index;
			defeatanim.sprite_index = hurtsprite;
			defeatanim.image_index = 0;
			defeatanim.image_xscale = image_xscale;
			defeatanim.image_yscale = image_yscale;
			instance_destroy();
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
if (custom_draw_example == 0)
{
	scr_enemy_drawidle_generic(image_speed);
}
else if (state == 0)
{
	if (flash == 1)
		fsiner++;
	siner += 0.16666666666666666;
	if (global.mercymod[myself] >= global.mercymax[myself])
	{
		draw_monster_body_part(sparedsprite, siner, x, y);
	}
	else
	{
		draw_monster_body_part(spr_diamondm_custom_body_example, 1, x + (sin(siner) * 2), y);
		draw_monster_body_part(spr_diamondm_custom_body_example, 0, x - (sin(siner) * 2), y + cos(siner));
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
