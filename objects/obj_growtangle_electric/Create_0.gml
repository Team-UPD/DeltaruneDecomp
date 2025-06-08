scr_bullet_init();
destroyonhit = 0;
image_speed = 0.2;
image_alpha = 0;
active = 0;
if (instance_exists(obj_growtangle))
{
	image_xscale = obj_growtangle.image_xscale;
	image_yscale = obj_growtangle.image_yscale;
	image_angle = obj_growtangle.image_angle;
}
else
{
	instance_destroy();
}
instance_create(x, y, obj_growtangle_electric_pushin);
timer = 0;
type = 0;
con = 0;
amplitude = 0;
maxamplitude = 60;
spinamplitude = 0;
plugx = 120;
plugalpha = 0;
shottimer = 0;
speedmode = 1;
xx = 0;
yy = 0;
if (instance_exists(obj_queen_enemy))
	damage = global.monsterat[obj_queen_enemy.myself] * 5;
if (instance_exists(obj_queen_bulletcontroller))
	target = obj_queen_bulletcontroller.target;
grazepoints = 4;
