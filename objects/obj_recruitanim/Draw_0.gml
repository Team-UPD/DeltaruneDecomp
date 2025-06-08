draw_self();
if (secondnumber > 1)
{
	draw_set_color(c_white);
	draw_set_font(global.damagefontgold);
	draw_set_alpha(image_alpha);
	draw_text(x - 70, y + 35, firstnumber);
	draw_text(x - 30, y + 35, secondnumber);
	draw_sprite(spr_numbersfontbig_gold, 13, x - 50, y + 35);
	draw_set_alpha(1);
}
