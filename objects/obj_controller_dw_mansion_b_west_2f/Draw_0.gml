if (global.flag[373] == 0)
{
	animsiner++;
	draw_sprite_ext(spr_dw_mansion_basement_switch_on, animsiner / 6, 320, 2280, 2, 2, 0, c_white, 1);
}
else
{
	draw_sprite_ext(spr_dw_mansion_basement_switch_off, 0, 320, 2280, 2, 2, 0, c_white, 1);
}
