scr_bullet_init();
destroyonhit = 1;
image_xscale = 0.25;
image_yscale = 0.5;
sprite_index = spr_rouxls_fire;
depth = obj_heart.depth - 1;
image_angle = obj_bqueen_breath_controller.place1;
afterimage = 0;
fadeaway = 0;
slowdown = 0;
timer = 0;
rotator_target = -1;
length = 2;
type = 1;
myspeed = 6;
afterimagetimer = 0;
if (instance_exists(obj_bqueen_breath_controller))
	damage = obj_bqueen_breath_controller.damage;
if (instance_exists(obj_bqueen_breath_controller))
	target = obj_bqueen_breath_controller.target;
grazepoints = 3;
siner = 0;
