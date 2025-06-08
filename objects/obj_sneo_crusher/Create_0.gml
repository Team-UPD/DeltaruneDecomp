event_inherited();
hp = 3;
offset = 200;
subindex = 0;
animtimer = 0;
drawcolor = c_white;
flash = 0;
image_yscale = 10;
image_xscale = 2;
difficulty = 1;
slidedir = randomsign() * random_range(2, 6);
destroying = 0;
new_movement = obj_spamton_neo_enemy.newcrushermovement;
if (new_movement == 0)
{
	direction = 180;
	speed = 0.4;
	friction = 0;
}
else
{
	hspeed = obj_spamton_neo_enemy.crusher_start_hspeed;
	vspeed = random_range(2, -2);
	haccel = obj_spamton_neo_enemy.crusher_start_hacceleration;
	topy = obj_growtangle.y - 60;
	bottomy = obj_growtangle.y + 60;
	vbounce = 1;
}
updown = 1;
crushedObj = 0;
maxspeed = 8;
destroyonhit = 0;
offsetCap = 0;
crushtimer = 0;
init = 0;
siner = 0;
creatednewalls = 0;
pushback = 0;
createdguns = 0;
startdepth = depth;
flashsiner = 0;
