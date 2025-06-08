with (obj_npc_room)
	instance_destroy();
wirecon = 0;
wiretimer = 0;
funcon = 0;
customcon = 0;
con = 0;
destroyme = 0;
if (global.plot >= 51)
{
	instance_destroy();
	con = -1;
}
else
{
	npc1_o = instance_create(260, 200, obj_npc_room);
	with (npc1_o)
		scr_depth();
	npc2_o = instance_create(380, 280, obj_npc_room);
	with (npc2_o)
		scr_depth();
	con = 1;
}
screencon = 0;
screenmax = 0;
screencount = 0;
susieattackcon = 0;
susieattacktimer = 0;
alarm[5] = 1;
screenx[0] = 117;
screeny[0] = 40;
screenimage[0] = 0;
screenx[1] = 80;
screeny[1] = 40;
screenimage[1] = 2;
screenx[2] = 210;
screeny[2] = 40;
screenimage[2] = 1;
screenx[3] = 245;
screeny[3] = 40;
screenimage[3] = 2;
screenx[4] = 30;
screeny[4] = 35;
screenimage[4] = 3;
screenx[5] = 63;
screeny[5] = 39;
screenimage[5] = 0;
screenx[6] = 94;
screeny[6] = 35;
screenimage[6] = 4;
screenx[7] = 220;
screeny[7] = 35;
screenimage[7] = 5;
screenx[8] = 253;
screeny[8] = 39;
screenimage[8] = 0;
screenx[9] = 284;
screeny[9] = 35;
screenimage[9] = 5;
screenx[10] = 220;
screeny[10] = 35;
screenimage[10] = 7;
for (i = 11; i < 16; i++)
{
	if (i == 11)
	{
		screenx[i] = 28;
		screeny[i] = 67;
	}
	if (i == 12)
	{
		screenx[i] = 73;
		screeny[i] = 34;
	}
	if (i == 13)
	{
		screenx[i] = 95;
		screeny[i] = 74;
	}
	if (i == 14)
	{
		screenx[i] = 224;
		screeny[i] = 76;
	}
	if (i == 15)
	{
		screenx[i] = 282;
		screeny[i] = 78;
	}
	screenimage[i] = 6;
}
screenx[16] = 253;
screeny[16] = 39;
screenimage[16] = 0;
screenx[17] = 284;
screeny[17] = 35;
screenimage[17] = 8;
