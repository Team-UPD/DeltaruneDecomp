scr_enemy_object_init();
var tensionbonus = (global.flag[458] / 7) * global.maxtension * 0.3;
scr_tensionheal(tensionbonus);
global.temptension[0] = tensionbonus;
talkmax = 90;
image_speed = 0.16666666666666666;
idlesprite = spr_rurus_pirate;
hurtsprite = spr_rurus_pirate;
sabersprite = spr_rurus_pirate_saber;
sparedsprite = spr_rurus_pirate;
custom_draw_example = 1;
depth = -10;
thrash = instance_create(x, y, obj_thrashmachine);
thrash.xx = x + 34;
thrash.yy = y + 108;
thrash.depth = depth + 5;
thrash.drawfeet = 0;
drawsiner = 0;
thrashmode = 0;
thrashcon = 0;
thrashbody = 0;
thrashtimer = 0;
remx = x;
remy = y;
movey = 0;
bulletoverride = -1;
chosenattack = 0;
advancespeed = 8;
returnspeed = 6;
aimtime = irandom(15) + 10;
floatheight = 0;
returnease = 0;
headattack = 0;
puddle = instance_create(x, y, obj_marker);
puddle.sprite_index = spr_rouxls_puddle;
puddle.image_xscale = 2;
puddle.image_yscale = 2;
puddle.image_speed = 0;
puddle.image_index = (thrash.part[0] == 2) ? 2 : 0;
var turretbody = thrash.part[0] == 2;
puddle.x = remx + (turretbody ? 18 : 34);
puddle.y = remy + 173 + ((thrash.s * cos((thrash.wsiner + thrash.wsinerrate) / 3)) / 4);
puddle.image_index = turretbody ? 2 : 0;
submerged = 1;
keytestmode = 0;
saberanim = 0;
head_difficulty = 0;
wheel_difficulty = 0;
buildedblocks = 0;
buildedblockstimer = 0;
did_kris_win_simcity = 0;
HouseCount = 1;
if (room != room_dw_mansion_acid_tunnel_loop_rouxls)
{
	tile6 = instance_create(camerax() + 0, cameray() + 80, obj_simtown_acidmaker);
	tile6.image_xscale = 16;
	tile6.image_yscale = 6;
	tile1 = instance_create(camerax() + 160, cameray() + 80, obj_simtown_landmaker);
	tile1.image_xscale = 8;
	tile2 = instance_create(camerax() + 160, cameray() + 120, obj_simtown_landmaker);
	tile2.image_xscale = 8;
	tile3 = instance_create(camerax() + 240, cameray() + 160, obj_simtown_landmaker);
	tile3.image_xscale = 3;
	tile4 = instance_create(camerax() + 280, cameray() + 200, obj_simtown_landmaker);
	tile4.image_xscale = 3;
	tile5 = instance_create(camerax() + 160, cameray() + 240, obj_simtown_landmaker);
	tile5.image_xscale = 8;
	tile6 = instance_create(camerax() + 160, cameray() + 280, obj_simtown_landmaker);
	tile6.image_xscale = 8;
}
if (!scr_debug() || room == room_dw_mansion_acid_tunnel_loop_rouxls)
{
	with (obj_simtown_landmaker)
		visible = 0;
	with (obj_simtown_acidmaker)
		visible = 0;
}
if (!i_ex(obj_rouxls_simtown))
	simcity = instance_create(x, y, obj_rouxls_simtown);
else
	simcity = obj_rouxls_simtown;
puddle.depth = simcity.depth + 1;
depthChange = 0;
simcity.maker = id;
endbattle = 0;
actresult = "tie";
target_multiplier = 0;
with (obj_battleback)
	instance_destroy();
ballooncount = 0;
ballooncon = 0;
talkedcon = 0;
talktimer = 0;
hasplayerplacedhouses = 0;
ralseitalks = 0;
attackorder = 0;
zone[0] = stringsetloc("Residential", "obj_rouxls_enemy_slash_Create_0_gml_116_0");
zone[1] = stringsetloc("Commercial", "obj_rouxls_enemy_slash_Create_0_gml_117_0");
zone[2] = stringsetloc("Industrial", "obj_rouxls_enemy_slash_Create_0_gml_118_0");
city[0] = stringsetloc("Parks", "obj_rouxls_enemy_slash_Create_0_gml_120_0");
city[1] = stringsetloc("Crime", "obj_rouxls_enemy_slash_Create_0_gml_121_0");
city[2] = stringsetloc("Public Transport", "obj_rouxls_enemy_slash_Create_0_gml_122_0");
duckmode = global.flag[220] == 3 && global.flag[221] == 3 && global.flag[222] == 3;
stat1[0][0] = 5;
stat2[0][0] = 4;
stat1[0][1] = 1;
stat2[0][1] = 0;
stat1[0][2] = 2;
stat2[0][2] = 3;
stat1[0][3] = 6;
stat2[0][3] = 6;
stat1[1][0] = 0;
stat2[1][0] = 2;
stat1[1][1] = 4;
stat2[1][1] = 1;
stat1[1][2] = 3;
stat2[1][2] = 5;
stat1[1][3] = 6;
stat2[1][3] = 6;
stat1[2][0] = 1;
stat2[2][0] = 2;
stat1[2][1] = 3;
stat2[2][1] = 4;
stat1[2][2] = 0;
stat2[2][2] = 5;
stat1[2][3] = 6;
stat2[2][3] = 6;
for (i = 0; i < 6; i += 1)
	stat[i] = 0;
for (i = 0; i < 3; i += 1)
{
	if (global.flag[220 + i] >= 0)
	{
		var addstat1 = stat1[i][global.flag[220 + i]];
		var addstat2 = stat2[i][global.flag[220 + i]];
		if (addstat1 < 6)
			stat[addstat1] += 1;
		if (addstat2 < 6)
			stat[addstat2] += 1;
	}
}
type = -1;
topstat = -1;
topstatlevel = 0;
for (i = 0; i < 6; i += 1)
{
	if (stat[i] == topstatlevel && topstatlevel >= 2)
		type = 7;
	if (stat[i] > topstatlevel)
	{
		topstat = i;
		topstatlevel = stat[i];
	}
}
type = topstat;
if (type == 7)
	type = -1;
if (topstatlevel == 0)
	type = 6;
