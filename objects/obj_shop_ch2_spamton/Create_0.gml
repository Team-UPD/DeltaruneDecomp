idletimer = 0;
idlefacer = 0;
talkfacer = 0;
talkbuffer = 0;
menu = 0;
submenu = 0;
global.typer = 6;
draw_set_color(c_white);
scr_84_set_draw_font("mainbig");
talktimer = 0;
cur_jewel = 0;
shopcharx = 0;
siner = 0;
for (i = 0; i < 20; i += 1)
{
	menuc[i] = 0;
	submenuc[i] = 0;
}
onebuffer = 0;
twobuffer = 0;
upbuffer = 0;
downbuffer = 0;
hold_up = 0;
hold_down = 0;
_up_pressed = 0;
_down_pressed = 0;
murder = 0;
moff = 415;
snd_free_all();
global.currentsong[0] = snd_init("spamton_neo_after.ogg");
global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.98);
menu = 0;
menuc[0] = 0;
menuc[1] = 0;
menuc[2] = 0;
menuc[3] = 0;
menuc[4] = 0;
item0pic = spr_heart;
item1pic = spr_heart;
item2pic = spr_heart;
item3pic = spr_heart;
itemtotal = 4;
itemcount = 4;
item[0] = 12;
item[1] = 32;
item[2] = 20;
item[3] = 20;
item[4] = 0;
item[5] = 0;
item[6] = 0;
soldout[0] = 0;
if (global.flag[309] >= 3)
	soldout[0] = 1;
soldout[1] = -1;
soldout[2] = -1;
soldout[3] = -1;
soldout[4] = -1;
soldout[5] = -1;
soldout[6] = -1;
itemtype[0] = "keyitem";
itemtype[1] = "item";
itemtype[2] = "weapon";
itemtype[3] = "armor";
itemtype[4] = "item";
itemtype[5] = "item";
itemtype[6] = "item";
shopdesc[0] = stringsetloc("KEYITEM#100%#CERTIFIED#WAREZ", "obj_shop_ch2_spamton_slash_Create_0_gml_89_0");
shopdesc[1] = stringsetloc("ITEM#ITEM#AFFECTS HP#A LOT!#THE SMOOTH#TASTE OF", "obj_shop_ch2_spamton_slash_Create_0_gml_90_0");
shopdesc[2] = stringsetloc("CUT ANYTHING#2 PIECES!#CRIMINAL!", "obj_shop_ch2_spamton_slash_Create_0_gml_91_0");
shopdesc[3] = stringsetloc("EXCLUSIVE#OFFICIAL#SPAMTON", "obj_shop_ch2_spamton_slash_Create_0_gml_92_0");
for (i = 0; i < itemtotal; i += 1)
{
	itematk[i] = 0;
	itemdef[i] = 0;
	itemmagic[i] = 0;
	canequip[i][1] = 0;
	canequip[i][2] = 0;
	canequip[i][3] = 0;
	if (itemtype[i] == "keyitem")
	{
		scr_keyiteminfo(item[i]);
		shopitemname[i] = tempkeyitemname;
		buyvalue[i] = 100;
	}
	if (itemtype[i] == "item")
	{
		scr_iteminfo(item[i]);
		shopitemname[i] = itemnameb;
		buyvalue[i] = value;
	}
	if (itemtype[i] == "armor")
	{
		scr_armorinfo(item[i]);
		shopitemname[i] = armornametemp;
		buyvalue[i] = value;
		itemdef[i] = armordftemp;
		canequip[i][1] = armorchar1temp;
		canequip[i][2] = armorchar2temp;
		canequip[i][3] = armorchar3temp;
	}
	if (itemtype[i] == "weapon")
	{
		scr_weaponinfo(item[i]);
		itematk[i] = weaponattemp;
		itemmagic[i] = weaponmagtemp;
		shopitemname[i] = weaponnametemp;
		canequip[i][1] = weaponchar1temp;
		canequip[i][2] = weaponchar2temp;
		canequip[i][3] = weaponchar3temp;
		buyvalue[i] = value;
	}
}
shopitemname[1] = stringsetloc("S. POTION", "obj_shop_ch2_spamton_slash_Create_0_gml_147_0");
shopitemname[2] = stringsetloc("''THE BIG ONE''", "obj_shop_ch2_spamton_slash_Create_0_gml_148_0");
canequip[2][1] = 1;
canequip[2][2] = 1;
canequip[2][3] = 1;
itematk[2] = 5324823492384348000000000;
shopitemname[3] = stringsetloc("BSHOT BOWTIE", "obj_shop_ch2_spamton_slash_Create_0_gml_153_0");
itemdef[3] = 50;
sell = 0;
bought = 0;
mainmessage = 0;
minimenuy = 220;
global.typer = 23;
scr_84_set_draw_font("mainbig");
sidemessage = 0;
selling = 0;
global.msc = 0;
glow = 0;
shx = 130;
soldo = 0;
global.fe = 0;
an = 0;
global.fe = 0;
siner = 0;
greybg = 0;
greybgtimer = 0;
glitchtimer = 0;
numbertimer = 0;
randomnumber = 66666;
randomscale = 0.5;
spamtonalpha = 1;
spamtonx = 0;
vibratex = 0;
vibratey = 0;
vibrationtimer = 0;
mouthsiner = 0;
glitchtimer2 = 0;
keygen = 0;
talked_deal = 0;
talked_knight = 0;
talked_fear = 0;
pause_music = false;
static_music = -1;
if (global.flag[386] == 0)
	global.flag[386] = 1;
if (global.flag[309] >= 7)
{
	greybg = 1;
	greybgtimer = 121;
	snd_pitch(global.currentsong[1], 0.7);
	menu = 4;
	sell = 2;
}
moneytimer = 0;
runawayscale = 0;
moneytimercount = 0;
nothingcount = 0;
selltype = "item";
selltotal = max(global.flag[64], 12);
for (i = 0; i < selltotal; i++)
{
	itemsellvalue[i] = 0;
	itemsellname[i] = "";
}
phonetimer = 0;
phoneindex = 0;
phoneringing = 0;
ynchoice = 0;
menumax = 1;
song_timer = 0;
song_max_time = 750;
