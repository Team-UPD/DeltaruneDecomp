timer++;
if (timer >= (90 / f) && timer <= (120 / f) && xscale2 > 0)
{
	head_angle -= 2;
	heady -= 0.4;
	head_xscale -= 0.025;
	head_yscale -= 0.025;
}
if (timer >= (140 / f) && timer <= (180 / f) && xscale2 > 0)
{
	xscale2 -= 0.1;
	yscale2 -= 0.1;
}
if (timer >= (180 / f) && timer <= (220 / f))
{
	image_xscale -= 0.07;
	image_yscale -= 0.07;
	obj_thrash_transformation_controller.image_xscale += 0.05;
	obj_thrash_transformation_controller.image_yscale += 0.05;
}
if (timer >= (220 / f) && timer <= (240 / f))
	state = 1;
d3d_set_fog(1, c_black, 0, 0);
if (timer <= (220 / f))
	draw_sprite_ext(spr_thrash_legs, 0, x + 4, y + 24, xscale2, yscale2, 0, c_white, 1);
draw_sprite_ext(spr_thrash_head, 0, x + 36, heady, head_xscale, head_yscale, head_angle, c_white, 1);
draw_self();
d3d_set_fog(0, c_black, 0, 0);
draw_sprite_ext(spr_whitepx, 0, 0, 0, 640, 480, 0, c_white, fade_alpha);
heady += vspeed;
