swan = 0;
if (room >= room_dw_mansion_acid_tunnel)
{
	swan = 1;
	sprite_index = spr_swanboat;
	image_speed = 0.1;
	if (global.plot == 140 && global.flag[343] == 0)
		sprite_index = spr_swanboat_squish;
}
swanmaincharax = 80;
swanmaincharay = 20;
con = 0;
contimer = 0;
active = 0;
wx = 2;
wy = 0;
image_xscale = 2;
image_yscale = 2;
msgtimer = 0;
dotalk = 0;
dospecialtalk = 0;
dobackwardstalk = 0;
talkcon = 0;
specialtalkcon = 0;
backwardstalkcon = 0;
pause_x_move = false;
pause_y_move = false;
pause_auto_talk = false;
