shadow = 0;
tower = 0;
con = 0;
image_speed = 0;
image_index = 0;
jumping = 0;
jumpy = 0;
image_xscale = 2;
image_yscale = 2;
jumpstyle = 0;
failureCount = 0;
failureGoal = 5;
failplus = 0;
selfFigureTimer = 0;
extflag = 0;
jostlecon = 0;
jostletimer = 0;
targetx = x + 160;
depth = -1;
target = 0;
hastarget = 0;
jumppuzzle = 0;
fallen = 0;
idealx = 280;
idealy = 260;
entranceLeft = 60;
waiting = true;
winY = 0;
scoreplusinit = 0;
bonus = 0;
autocomplete = 0;
graceperiod = 0;
if (room == room_dw_city_mice)
{
	if (instance_exists(obj_controller_dw_city_mice))
		obj_controller_dw_city_mice.noelleScared = 1;
}
