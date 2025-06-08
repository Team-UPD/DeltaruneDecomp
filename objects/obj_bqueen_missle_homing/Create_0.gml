scr_bullet_init();
timer = 0;
con = 0;
image_speed = 0;
image_xscale = 1;
image_yscale = 1;
depth = obj_heart.depth - 1;
vspeed = 10;
destroyonhit = 1;
afterimage = 0;
hspeed = random_range(2, -2);
vspeed = random_range(2, -2);
homingfactor = 0;
maxhomingfactor = 2;
if (instance_exists(obj_bqueen_breath_controller))
	damage = obj_bqueen_breath_controller.damage;
if (instance_exists(obj_bqueen_breath_controller))
	target = obj_bqueen_breath_controller.target;
grazepoints = 3;
