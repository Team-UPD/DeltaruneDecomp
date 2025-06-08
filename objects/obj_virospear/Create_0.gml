destroyoffscreen = true;
tolerance = 32;
if (instance_exists(obj_mainchara))
	move_towards_point(charaHeartX(), charaHeartY(), 1);
image_angle = direction;
idealFriction = -0.3;
friction = idealFriction;
image_xscale = 0.25;
image_yscale = 0.25;
exploded = 0;
target = 3;
damage = 8;
active = 1;
hit = 0;
image_speed = 0;
