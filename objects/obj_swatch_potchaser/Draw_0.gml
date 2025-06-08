draw_self();
sweattimer++;
if (sweattimer == 30)
	sweattimer = 0;
if (sweattimer <= 15)
{
	if (sprite_index == spr_npc_swatchling_scared)
		draw_sprite_ext(spr_defeatsweat, 0, x + 90, y - 2, image_xscale * -1, image_yscale, 0, c_white, 1);
}
