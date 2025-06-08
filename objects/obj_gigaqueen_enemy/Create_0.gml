scr_enemy_object_init();
instance_create(-1000, -1000, obj_boxingqueen_black_bg);
instance_create(x, y, obj_3d_bg_effect);
instance_create(x, y, o_boxingcontroller);
instance_create(x, y, o_boxingqueen);
with (obj_battleback)
	visible = false;
init = 0;
turn = 0;
battlemsgtimer = 0;
if (i_ex(obj_battlecontroller))
{
	obj_battlecontroller.cantspare[0] = 1;
	cantspareinit = 1;
}
kris_save_hp = global.hp[1];
kris_save_max_hp = global.maxhp[1];
var hprecruit = 0;
if (global.flag[254] == 1)
	hprecruit += 5;
if (global.flag[357] == 1)
	hprecruit += 5;
if (global.flag[630] == 1)
	hprecruit += 5;
if (global.flag[631] == 1)
	hprecruit += 5;
if (global.flag[632] == 1)
	hprecruit += 5;
if (global.flag[633] == 1)
	hprecruit += 5;
if (global.flag[634] == 1)
	hprecruit += 5;
if (global.flag[635] == 1)
	hprecruit += 5;
if (global.flag[636] == 1)
	hprecruit += 5;
if (global.flag[640] == 1)
	hprecruit += 5;
if (global.flag[642] == 1)
	hprecruit += 5;
if (global.flag[644] == 1)
	hprecruit += 5;
if (hprecruit > 50)
	hprecruit = 50;
global.hp[1] = 200 + hprecruit;
global.maxhp[1] = 200 + hprecruit;
global.charname[1] = stringsetloc("Thrash Machine", "obj_gigaqueen_enemy_slash_Create_0_gml_19_0");
balloonorder = 0;
ballooncon = 0;
balloonend = 1;
talkedcon = 0;
playerhasntdodged = 0;
playerhasntdodgedorder = 0;
didntdodgethisturn = 0;
didntpunchthisturn = 0;
didntcounterthisturn = 0;
recentphasetransition = 0;
healcount = 0;
haventusedspell = 1;
init = 0;
finalconvcon = 0;
missleattack = 0;
breathattack = 0;
extradamage = 0;
actpunchtext = 0;
for (j = 0; j < 13; j += 1)
	items[j] = global.item[j];
