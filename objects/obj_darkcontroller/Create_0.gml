cur_jewel = 0;
alarm[0] = 1;
charcon = 0;
chartimer = 0;
tp = 0;
xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
global.fighting = 0;
movenoise = 0;
selectnoise = 0;
cancelnoise = 0;
onebuffer = 0;
twobuffer = 0;
threebuffer = 0;
upbuffer = 0;
downbuffer = 0;
hold_up = 0;
hold_down = 0;
dograndom = 0;
atalk = 0;
deschaver = 0;
bcolor = merge_color(c_purple, c_black, 0.7);
bcolor = merge_color(bcolor, c_dkgray, 0.5);
chartotal = 0;
havechar[0] = 0;
havechar[1] = 0;
havechar[2] = 0;
global.charturn = 3;
tp = 0;
tpy = 50;
bp = 0;
bpy = 152;
mmy[0] = 0;
mmy[1] = 0;
mmy[2] = 0;
global.submenu = 0;
global.charselect = -1;
for (var i = 0; i < 36; i += 1)
	global.submenucoord[i] = 0;
global.cinstance[0] = 4343434343;
global.cinstance[1] = 343434343434;
for (var i = 0; i < 3; i += 1)
{
	global.faceaction[i] = 0;
	if (global.char[i] != 0)
		chartotal += 1;
	if (global.char[i] == 1)
	{
		havechar[0] = 1;
		charpos[0] = i;
	}
	if (global.char[i] == 2)
	{
		havechar[1] = 1;
		charpos[1] = i;
		if (i > 0)
		{
			global.cinstance[i - 1] = instance_create(obj_mainchara.x - 6, obj_mainchara.y - 16, obj_caterpillarchara);
			global.cinstance[i - 1].target = i * 12;
		}
	}
	if (global.char[i] == 3)
	{
		havechar[2] = 1;
		charpos[2] = i;
		if (i > 0)
		{
			global.cinstance[i - 1] = instance_create(obj_mainchara.x - 4, obj_mainchara.y - 12, obj_caterpillarchara);
			global.cinstance[i - 1].target = i * 12;
			with (global.cinstance[i - 1])
			{
				usprite = spr_ralseiu;
				dsprite = spr_ralseid;
				rsprite = spr_ralseir;
				lsprite = spr_ralseil;
			}
		}
	}
}
slmxx = 0;
slmyy = 0;
s_siner = 0;
menusiner = 0;
pagemax[0] = 0;
pagemax[1] = 0;
getmusvol = 1;
curvol = 1;
hpcolor[0] = c_aqua;
hpcolor[1] = c_fuchsia;
hpcolor[2] = c_lime;
gamepad_controls = [gp_face1, gp_face2, gp_face3, gp_face4, gp_shoulderl, gp_shoulderlb, gp_shoulderr, gp_shoulderrb, gp_select, gp_start, gp_stickl, gp_stickr, gp_padu, gp_padd, gp_padl, gp_padr];
border_text = (global.lang == "en") ? "Border" : "フレーム";
border_options = (global.lang == "en") ? ["Dynamic", "Simple", "None"] : ["ダイナミック", "シンプル", "なし"];
var border_options_en = ["Dynamic", "Simple", "None"];
var border_options_ja = ["ダイナミック", "シンプル", "なし"];
if (global.lang == "ja")
{
	for (var i = 0; i < array_length_1d(border_options_en); i++)
	{
		if (border_options_en[i] == global.screen_border_id)
		{
			global.screen_border_id = border_options_ja[i];
			break;
		}
	}
}
else
{
	for (var i = 0; i < array_length_1d(border_options_ja); i++)
	{
		if (border_options_ja[i] == global.screen_border_id)
		{
			global.screen_border_id = border_options_en[i];
			break;
		}
	}
}
selected_border = 0;
for (var i = 0; i < array_length_1d(border_options); i++)
{
	if (border_options[i] == global.screen_border_id)
	{
		selected_border = i;
		break;
	}
}
