if (infection == 1 && image_index < 1)
	draw_sprite_ext(targetsprite, targetimage, targetx, targety, 1, 1, 1, poisoncolor, 1);
if (infection == 1)
{
	x = targetx;
	y = targety;
}
draw_self();
if (flash > 0)
{
	d3d_set_fog(true, merge_color(poisoncolor, c_white, 0.5), 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, flash / 5);
	d3d_set_fog(false, c_black, 0, 0);
	flash--;
}
var growt = obj_growtangle.x;
var gridth = (obj_growtangle.sprite_width / 2) + 10;
if ((direction == 0 && x > (growt + gridth)) || (direction == 180 && x < (growt - gridth)))
{
	active = 0;
	image_alpha -= 0.1;
	if (image_alpha == 0)
		instance_destroy();
}
else if (image_alpha < 1)
{
	image_alpha += 0.1;
}
