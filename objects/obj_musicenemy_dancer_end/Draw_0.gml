draw_sprite_ext(sprite_index, 1, x, y, image_xscale * bodyflip, image_yscale, 0, c_white, image_alpha);
draw_sprite_ext(sprite_index, headimage + headframe, x + (sin(siner / 3) * 2), y, image_xscale, image_yscale, 0, c_white, image_alpha);
siner++;
x += (sin(siner / 8) * 3);
timer++;
if (timer >= 11)
{
	frame = 1;
	timer = 0;
}
if (frame == 1)
{
	bodyflip *= -1;
	frame = 0;
}
if (shoottimer >= 22)
{
	active = 1;
	shoottimer -= 22;
}
if (active == 1)
{
	if (headframe == 0)
	{
		anim = instance_create((x - 40) + random(80), y - 106, obj_afterimage);
		anim.sprite_index = spr_musicalbattlenote1;
		anim.depth = depth - 5;
		anim.image_xscale = 2;
		anim.image_yscale = 2;
		anim.direction = 270;
		anim.gravity = -0.2;
		anim.hspeed = random_range(0.1, 0.8) * choose(1, -1);
		headframe = 1;
	}
	headframe += 0.5;
	if (headframe >= 2.5)
		active = 0;
}
else
{
	headframe = 0;
}
