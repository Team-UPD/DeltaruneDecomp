if (init == 0)
{
	timer = 0;
	siner = 0;
	con = 1;
	float = 0;
	init = 1;
	image_speed = 0;
	image_index = 0;
}
if (float == 1)
{
	siner++;
	y -= (sin(siner / 8) * 0.3);
}
if (con == 1)
{
	scr_lerpvar("y", y - 20, y, 30, 2, "out");
	scr_lerpvar("image_alpha", 0, 1, 30, 2, "out");
	con = 2;
}
if (con == 2)
{
	timer++;
	if (timer >= 30)
	{
		float = 1;
		con = 3;
		timer = 0;
	}
}
if (con == 4)
{
	timer++;
	if (timer >= 15)
	{
		scr_oflash();
		timer = 0;
	}
	var goalx = lengthdir_x(sprite_width * 2, random(360));
	var goaly = lengthdir_y(sprite_height, random(360));
	var thisid = id;
	ball = instance_create(x + goalx, y + goaly, obj_afterimage_grow);
	ball.sprite_index = spr_cutscene_27_berdly_halberd_orb;
	ball.image_xscale = 2;
	ball.image_yscale = 2;
	ball.image_alpha = 0;
	ball.fade = -0.1;
	ball.xrate = -0.08;
	ball.yrate = -0.08;
	with (ball)
	{
		scr_lerpvar("x", x, thisid.x, 20, 2, "in");
		scr_lerpvar("y", y, thisid.y + (goaly / 4), 20, 2, "in");
		scr_doom(id, 20);
	}
}
if (con == 5)
{
	with (obj_lerpvar)
		instance_destroy();
	with (obj_afterimage)
	{
		gravity = 1;
		vspeed = 1 + random(2);
	}
	scr_lerpvar("y", y, y - 20, 30, 2, "in");
	scr_lerpvar("image_alpha", 1, 0, 30, 2, "in");
	scr_doom(id, 40);
	con = 6;
}
