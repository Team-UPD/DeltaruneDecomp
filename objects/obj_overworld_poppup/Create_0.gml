if (scr_sideb_get_phase() == 2)
	weird = 1;
else
	weird = 0;
topsprite = 0;
init = 0;
frozensprite = 0;
speedboost = 0;
encountertype = 0;
noellepresent = false;
if (instance_exists(obj_caterpillarchara))
{
	with (obj_caterpillarchara)
	{
		if (name == "noelle")
			other.noellepresent = true;
	}
}
image_xscale = 2;
image_yscale = 2;
image_speed = 0;
con = 0;
dist = 99999;
speed1 = 0;
marker = 0;
radius = 160;
topsprite = 0;
topxoff = 0;
topyoff = 0;
flyoff = 0;
if (room == room_dw_city_roadblock)
{
	encounterflag = 530;
	if (global.flag[encounterflag] == 0)
		speedboost = 1;
	sprite_index = spr_poppup_peeking;
	if (noellepresent == true)
		instance_destroy();
}
if (room == room_dw_city_poppup)
{
	if (x > 700)
	{
		topsprite = spr_bg_city_trashcan_poppup;
		encountertype = 2;
		encounterflag = 538;
	}
	else
	{
		topsprite = spr_dogcone_middlepoint;
		encounterflag = 567;
		if (scr_sideb_get_phase() != 2)
			instance_destroy();
	}
}
if (room == room_dw_city_split)
{
	if (global.plot < 100)
	{
		sprite_index = spr_poppup_peeking;
		topsprite = spr_dogcone_middlepoint;
		encounterflag = 559;
		if (global.flag[916] != 0)
			instance_destroy();
		if (noellepresent == false)
			instance_destroy();
	}
	else
	{
		sprite_index = spr_poppup_peeking;
		topsprite = spr_balancepot;
		encounterflag = 572;
		encountertype = 2;
	}
}
memspeed = 0;
