timer = 0;
con = 0;
variant = 0;
init = 0;
siner = 0;
difficulty = obj_queen_enemy.phase - obj_queen_enemy.wirescut;
bardlymercy = 0;
lerpintimer = 0;
ysave = y;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
y -= 200;
depth = obj_queen_enemy.depth + 1;
for (i = 0; i < 6; i += 1)
{
	x1[i] = x;
	x2[i] = x;
	y1[i] = y - 30;
	y2[i] = -400;
	x_offset[i] = 0;
	visiblevine[i] = 1;
}
