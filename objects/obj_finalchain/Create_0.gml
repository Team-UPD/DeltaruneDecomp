direction = 180;
speed = 10;
image_angle = 180;
chaincon = 0;
sons = -1;
timer = 0;
gotimer = 0;
initkingx = obj_chainking.x;
initkingy = obj_chainking.y;
initboxx = obj_nonsolid_growtangle.x;
initboxy = obj_nonsolid_growtangle.y;
for (i = 0; i < 40; i += 1)
{
	kingx[i] = 0;
	kingy[i] = 0;
}
siner = 0;
btimer = 20;
bgap = 0;
type = 1;
movecon = 0;
movetime = 25;
mytimer = 0;
maxtimer = 200;
if (type == 1)
	maxtimer = 300;
image_blend = c_red;
bulletpoint = 0;
spikemake = 0;
ended = 0;
endtimer = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
inv = 60;
timepoints = 0;
grazepoints = 3;
target = 0;
damage = 50;
grazed = 0;
grazetimer = 0;
chain_noise = 0;
timerbonus = 0;
