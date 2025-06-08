scr_bullet_init();
element = 6;
destroyonhit = 0;
active = 0;
image_yscale = 0.05;
image_xscale = 0;
mask_index = spr_nothing;
firecon = 0;
effecttimer = 0;
siner = 0;
orbsize = 0;
instance_create(x, y, obj_sneo_biglaser_friendlyhitbox);
instance_create(x, y, obj_sneo_arm_laser_telegraph);
if (instance_exists(obj_spamton_neo_enemy))
	damage = global.monsterat[obj_spamton_neo_enemy.myself] * 5;
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
grazepoints = 10;
grazed = 1;
_type = 0;
