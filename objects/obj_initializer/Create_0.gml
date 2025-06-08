global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789+-%", 20, 0);
global.damagefontgold = font_add_sprite_ext(spr_numbersfontbig_gold, "0123456789+-%", 20, 0);
global.fighting = 0;
global.char[0] = 1;
global.char[1] = 2;
global.char[2] = 0;
global.gold = 0;
global.xp = 0;
global.inv = 0;
global.invc = 1;
for (i = 0; i < 3; i += 1)
{
	global.charauto[i] = 0;
	global.charmove[i] = 0;
	global.charcantarget[i] = 0;
	global.chardead[i] = 0;
	global.invincible[i] = 1;
}
global.charauto[0] = 0;
global.charauto[1] = 0;
global.charauto[2] = 0;
global.charauto[3] = 0;
for (i = 0; i < 4; i += 1)
{
	global.hp[i] = 200;
	global.maxhp[i] = 250;
	global.at[i] = 10;
	global.df[i] = 0;
	global.mag[i] = 0;
	for (j = 0; j < 12; j += 1)
		global.spell[i][j] = 0;
}
global.charname[0] = stringsetloc(" ", "obj_initializer_slash_Create_0_gml_47_0");
global.charname[1] = stringsetloc("Kris", "obj_initializer_slash_Create_0_gml_48_0");
global.charname[2] = stringsetloc("Susie", "obj_initializer_slash_Create_0_gml_49_0");
global.charname[3] = stringsetloc("Ralsei", "obj_initializer_slash_Create_0_gml_50_0");
global.hp[0] = 0;
global.maxhp[0] = 0;
global.hp[1] = 90;
global.maxhp[1] = 90;
global.at[1] = 10;
global.hp[2] = 120;
global.maxhp[2] = 120;
global.at[2] = 14;
global.mag[2] = 1;
global.hp[3] = 70;
global.maxhp[3] = 70;
global.at[3] = 8;
global.mag[3] = 12;
global.spell[2][0] = 4;
global.spell[3][0] = 2;
scr_spellinfo_all();
global.item[0] = 1;
global.item[1] = 1;
global.item[2] = 1;
global.item[3] = 1;
global.item[4] = 1;
global.item[5] = 1;
global.item[6] = 1;
global.item[7] = 1;
global.item[8] = 1;
global.item[9] = 1;
global.item[10] = 1;
global.item[11] = 1;
global.item[12] = 0;
scr_iteminfo_all();
global.l_item[0] = 1;
global.l_item[1] = 1;
global.l_item[2] = 2;
global.l_item[3] = 2;
global.l_item[4] = 1;
global.l_item[5] = 1;
global.l_item[6] = 2;
global.l_item[7] = 2;
global.l_item[8] = 1;
global.l_item[9] = 1;
global.l_item[10] = 2;
global.l_item[11] = 1;
global.l_item[12] = 0;
global.tension = 500;
global.maxtension = 1000;
global.grazetotal = 0;
global.grazeturn = 0;
for (i = 0; i < 3; i += 1)
{
	global.monster[i] = 1;
	global.monstername[i] = stringsetloc("Known Quantity", "obj_initializer_slash_Create_0_gml_114_0");
	global.monstertype[i] = 1;
	global.monsterat[i] = 3;
	global.monsterdf[i] = 2;
	global.monsterhp[i] = 20;
	global.monstermaxhp[i] = 20;
}
global.bmenuno = 0;
for (i = 0; i < 20; i += 1)
{
	for (j = 0; j < 20; j += 1)
		global.bmenucoord[i][j] = 0;
}
global.myfight = 0;
global.mnfight = 0;
draw_set_color(c_white);
global.fc = 2;
global.fe = 0;
global.typer = 3;
global.msg = " ";
global.msc = 0;
global.darkzone = 1;
for (i = 0; i < 10; i += 1)
{
	global.smdir[i] = 90;
	global.smspeed[i] = 2;
	global.smface[i] = 505050;
	global.smsprite[i] = spr_smallface_s0;
	global.smalarm[i] = 20;
	global.smtype[i] = 0;
	global.smxx[i] = 100;
	global.smyy[i] = 110;
	global.smcolor[i] = c_purple;
	global.smstring[i] = stringsetloc(" ", "obj_initializer_slash_Create_0_gml_158_0");
}
global.smalarm[1] = 15;
global.smyy[1] = 70;
global.smxx[1] = 700;
global.smdir[1] = 180;
global.smspeed[1] = 40;
global.smtype[1] = 3;
global.smsprite[1] = spr_smallface_a2;
global.smcolor[1] = c_white;
global.smstring[1] = stringsetloc(" ", "obj_initializer_slash_Create_0_gml_169_0");
for (i = 0; i < 100; i += 1)
	global.msg[i] = stringsetloc("%%", "obj_initializer_slash_Create_0_gml_173_0");
