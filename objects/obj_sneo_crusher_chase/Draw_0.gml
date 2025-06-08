flashsiner++;
var blend_color = merge_color(#00A2E8, c_aqua, 0.25 + (sin(flashsiner / 3) * 0.25));
if (destroying == 0 && offset > 0)
{
	if (offset > offsetCap)
		offset -= 20;
	draw_sprite(spr_spamton_dollar, 0, x, y);
	if (crushtimer >= 10 && offset == offsetCap && offset > 0)
		offset++;
	else if (offset < offsetCap)
		offset = offsetCap;
	drawcolor = c_white;
}
if (offset <= offsetCap)
{
	if (offset == 0)
		drawcolor = blend_color;
	animtimer++;
	if (animtimer > 1)
	{
		animtimer = 0;
		subindex = (subindex + 1) % 4;
	}
}
var s = image_xscale;
draw_sprite_ext(spr_sneo_pillar_thick, 0, x, y - 32 - offset, s * -1, 16, 0, image_blend, 1);
draw_sprite_ext(spr_sneo_pillar_thick, 0, x, 326, s, clamp((326 - (y + 32 + offset)) / 16, 0, 16), 0, image_blend, 1);
draw_sprite_ext(spr_sneo_pillar_piston, 0, x, y - offset, s * -1, s, 0, image_blend, 1);
if ((y + offset) < 310)
	draw_sprite_ext(spr_sneo_pillar_piston, 0, x, y + offset, s * -1, -s, 0, image_blend, 1);
if (flash)
	d3d_set_fog(true, image_blend, 0, 1);
draw_sprite_ext(spr_sneo_pillar_head_top, subindex, x, (y - offset) + 11, s * -1, s, 0, drawcolor, 1);
if ((y + offset) < 326)
	draw_sprite_ext(spr_sneo_pillar_head_bottom, subindex, x, y + offset + 11, s * -1, s, 0, drawcolor, 1);
if (flash)
{
	d3d_set_fog(false, c_black, 0, 0);
	flash = 0;
}
