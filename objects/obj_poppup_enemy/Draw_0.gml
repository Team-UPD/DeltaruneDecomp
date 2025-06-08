if (state == 3)
{
	scr_enemyhurt_tired_after_damage(0.5);
	scr_enemy_drawhurt_generic();
}
var imageSpeed = animspeed;
scr_enemy_drawidle_generic(imageSpeed);
if (cloning)
{
	cloneTimer = clamp(cloneTimer + 0.25, 0, 1);
	draw_sprite_ext_flash(thissprite, siner, x, y, image_xscale, image_yscale, image_angle, image_blend, cloneTimer);
}
if (!cloning && cloneTimer > 0)
{
	cloneTimer = clamp(cloneTimer - 0.25, 0, 1);
	draw_sprite_ext_flash(thissprite, siner, x, y, image_xscale, image_yscale, image_angle, image_blend, cloneTimer);
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
if (actcon == 20.5 && blockTimer == true)
{
	b = alarm[4] * 3.56;
	draw_rectangle_color(camerax() + 200, cameray() + 290, camerax() + 200 + b, cameray() + 300, c_aqua, c_aqua, c_aqua, c_aqua, 0);
	draw_sprite_ext(spr_poppup_hourglass, 1, camerax() + 200, cameray() + 295, 2, 2, 0, c_white, image_alpha);
}
