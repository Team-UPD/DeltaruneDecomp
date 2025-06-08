scr_bullet_init();
fauxspeed = 10;
direction = 180;
scr_getboxbounds();
minx += 8;
maxx -= 8;
miny += 8;
maxy -= 8;
destroyonhit = 0;
traillength = 25;
init = 0;
for (i = 0; i < 3; i++)
{
	bouncepoint_x[i] = x;
	bouncepoint_y[i] = y;
}
hitbox[0] = self;
sprite_index = spr_thrash_laser_hitbox;
image_yscale = 0.25;
for (i = 1; i < 3; i++)
{
	hitbox[i] = instance_create(x, y, obj_regularbullet);
	hitbox[i].destroyonhit = 0;
	hitbox[i].sprite_index = spr_thrash_laser_hitbox;
	hitbox[i].image_yscale = 0.25;
	hitbox[i].visible = 0;
}
bouncecount = 0;
bouncecap = 4;
