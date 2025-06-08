if (room == room_dw_cyber_queen_boxing)
	arcade = 1;
else
	arcade = 0;
f = 2;
c = 250;
depth = o_boxingqueen.depth - 1;
image_angle = irandom(359);
vspeed = 12 / f;
if (o_boxingcontroller.wireframe_boxing == 1)
	vspeed = 12 / f;
hit = 0;
hit_timer = 0;
prev_room_speed = room_speed;
xbase = x;
ybase = y;
hit_direction = -1;
baseball_combo_timer = 0;
reticletimer = 0;
image_xscale = 1.75;
image_yscale = 1.75;
reticletimer = -10;
baseball_hitbox = instance_create(x, y, o_boxing_hitbox);
with (baseball_hitbox)
{
	baseball = 1;
	hit_jumping = 0;
	give_hurt = 22 / f;
	timer = 400 / f;
	damage = 25;
	grazed = 1;
	maker_id = id;
	image_yscale = 2;
	image_xscale = 4;
}
wheel_hitbox_graze = instance_create(x, y, o_boxing_hitbox);
with (wheel_hitbox_graze)
{
	baseball = 1;
	hit_jumping = 0;
	timer = 400 / f;
	graze_only = 1;
	maker_id = id;
	image_yscale = 2;
	image_xscale = 8;
}
