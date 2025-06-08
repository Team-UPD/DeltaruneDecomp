image_speed = 0;
sndcon = 0;
sndtimer = 0;
dancetimer = 0 - (instance_number(object_index) * 2);
image_xscale = 2;
image_yscale = 2;
global.charinstance[0] = obj_mainchara;
global.charinstance[1] = global.cinstance[0];
global.charinstance[2] = global.cinstance[1];
con = 0;
vspeed = -6;
specturn = 0;
if (room == room_cc_4f)
{
	specturn = 1;
	vspeed = 0;
	hspeed = 6;
}
bullet = instance_create(x, y, obj_overworldbulletparent);
bullet.sprite_index = spr_scissordancer_precise;
with (bullet)
{
	active = 1;
	target = 3;
	damage = 15;
	visible = 0;
	image_blend = c_red;
	image_alpha = 1;
	image_xscale = 2;
	image_yscale = 2;
}
myinteract = 0;
