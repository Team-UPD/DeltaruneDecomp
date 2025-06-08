mySprite = spr_firework_explosion_shape1;
vspeed = random_range(-10, -8);
gravity = 0.25;
time = 0;
colorProfile = (1 << 0);
hue = irandom(255);
depth = 900000;
if (room == room_dw_city_postbaseball_1)
	depth = 1100000;
snd_play(snd_firework_send);
