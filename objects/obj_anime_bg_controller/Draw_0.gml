timer++;
x = camerax();
if (image_alpha > 0.1 && init == 0)
{
	init = 1;
	dronesfx = snd_loop(snd_dtrans_drone);
	snd_volume(dronesfx, 0, 0);
	snd_volume(dronesfx, 0.5, 60);
	snd_pitch(dronesfx, 0.1);
}
if (init == 1)
{
	linesfxtimer++;
	if (linesfxtimer >= 4)
	{
		linesfxtimer = 0;
		sidenoise = snd_play(snd_dtrans_twinkle);
		snd_volume(sidenoise, 0.3, 0);
		snd_pitch(sidenoise, 0.6 + random(0.6));
	}
}
c_extra = make_colour_rgb(255, 90, 195);
draw_self();
draw_sprite_ext(sprite_index, 0, x, y + 480, 1, 1, 0, c_white, image_alpha);
if (room == room_dw_mansion_top)
{
	if (y < (cameray() - 450))
		y += 450;
}
else if (y < (cameray() - 450))
{
	y = 0;
}
if (timer == (4 / f))
	instance_create(camerax() + 0 + irandom(70), cameray() + 652 + irandom(32), obj_anime_bg_dot);
if (timer == (10 / f))
	instance_create(camerax() + 70 + irandom(70), cameray() + 652 + irandom(32), obj_anime_bg_dot);
if (timer == (44 / f))
	instance_create((camerax() + 640) - irandom(70), cameray() + 652 + irandom(32), obj_anime_bg_dot);
if (timer == (50 / f))
	instance_create((camerax() + 570) - irandom(70), cameray() + 652 + irandom(32), obj_anime_bg_dot);
if (timer == (20 / f))
	instance_create(camerax() + 0 + irandom(320), cameray() + 652 + irandom(32), obj_anime_bg_star);
if (timer == (30 / f))
	instance_create(camerax() + 320 + irandom(320), cameray() + 652 + irandom(32), obj_anime_bg_star);
if (timer == (40 / f))
	instance_create(camerax() + irandom(640), cameray() + 652 + irandom(32), obj_anime_bg_star);
if (timer == (4 / f))
{
	ellipse = instance_create(camerax() + 260 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_ellipse);
	ellipse.image_blend = c_extra;
}
if (timer == (16 / f))
{
	ellipse = instance_create(camerax() + 260 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_ellipse);
	ellipse.image_blend = c_extra;
}
if (timer == (28 / f))
{
	ellipse = instance_create(camerax() + 260 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_ellipse);
	ellipse.image_blend = c_extra;
}
if (timer == (40 / f))
{
	ellipse = instance_create(camerax() + 0 + irandom(640), cameray() + 652 + irandom(32), obj_anime_bg_ellipse);
	ellipse.image_blend = c_yellow;
}
if (timer == (4 / f))
{
	line = instance_create(camerax() + 20 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_extra;
}
if (timer == (24 / f))
{
	line = instance_create(camerax() + 20 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_extra;
}
if (timer == (44 / f))
{
	line = instance_create(camerax() + 20 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_extra;
}
if (timer == (14 / f))
{
	line = instance_create((camerax() + 620) - irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_extra;
}
if (timer == (34 / f))
{
	line = instance_create((camerax() + 620) - irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_extra;
}
if (timer == (44 / f))
{
	line = instance_create((camerax() + 620) - irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_extra;
}
if (timer == (20 / f))
{
	line = instance_create(camerax() + 0 + irandom(640), cameray() + 652 + irandom(32), obj_anime_bg_line);
	line.image_blend = c_yellow;
}
if (timer >= (50 / f))
	timer = 0;
