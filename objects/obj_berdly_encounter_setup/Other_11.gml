state = 1;
instance_create(x, y, o_berdly_hide_intro_markers);
global.specialbattle = 3;
global.encounterno = 58;
encounterflag = 529;
global.flag[54] = encounterflag;
scr_encountersetup(global.encounterno);
if (global.flag[9] != 2)
{
	global.flag[9] = 1;
	global.batmusic[0] = snd_init("berdly_chase.ogg");
}
global.interact = 2;
if (global.flag[9] == 1)
	snd_volume(global.currentsong[1], 0, 20);
scr_encountersetup(global.encounterno);
with (obj_mainchara)
	visible = 0;
with (global.cinstance[0])
	visible = 0;
with (global.cinstance[1])
	visible = 0;
with (obj_mainchara)
	fun = 0;
with (obj_caterpillarchara)
	fun = 0;
count = 0;
fightcon = 1;
counttimer = 0;
