con = 0;
timer = 0;
shottimer = 0;
siner = 0;
sineradd = random(0.1) + 0.95;
vsiner = 0;
destroytimer = 0;
grazed = 0;
grazepoints = 1;
timepoints = 1;
target = -1;
grazetimer = 0;
element = "none";
dont = 1;
inv = 120;
if (instance_exists(obj_clubsenemy))
	damage = global.monsterat[obj_clubsenemy.myself] * 5;
