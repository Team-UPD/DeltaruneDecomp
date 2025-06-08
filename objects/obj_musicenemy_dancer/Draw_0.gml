if (global.turntimer < 1)
	instance_destroy();
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
buffer--;
if (active == 1)
{
	if (headframe == 0 && buffer <= 0)
	{
		buffer = 2;
		bul = instance_create(x, y - 40, obj_musical_note_bullet);
		bul.gravity = 0.5 + random(0.1);
		bul.image_xscale = 1;
		bul.image_yscale = 1;
		bul.image_angle = 0;
		bul.vspeed = -3;
		bul.hspeed = random_range(-4, 4);
		bul.bultype = bultype;
		if (instance_exists(obj_battlesolid))
		{
			if (x < obj_battlesolid.x)
				bul.hspeed = random(4);
			else
				bul.hspeed = -random(4);
		}
		if (bultype == 1)
			bul.hspeed = choose(-4, 4);
		bul.friction = 0.1;
		bul.depth = obj_musicenemy_boombox.depth - 100;
		bul.active = 1;
		bul.depth = -100;
		bul.copymake = 90;
		bul.damage = damage;
		bul.target = target;
		bul.sprite_index = spr_bullet_laser_circle;
		headframe = 1;
	}
	headframe += 0.25;
	if (headframe >= 2.5)
		active = 0;
}
else
{
	headframe = 0;
}
