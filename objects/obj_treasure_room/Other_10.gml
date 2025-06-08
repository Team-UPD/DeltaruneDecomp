with (obj_darkcontroller)
	charcon = 0;
global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_index = 1;
global.msg[0] = stringsetloc("* (It won't open.)/%", "obj_treasure_room_slash_Other_10_gml_14_0");
if (global.flag[itemflag] == 1)
{
	global.msg[0] = stringsetloc("* (The chest is empty.)/%", "obj_treasure_room_slash_Other_10_gml_18_0");
}
else
{
	snd_play(snd_locker);
	var itemgetstring = scr_itemget_anytype_text(itemidchest, itemtype);
	msgsetsubloc(0, "* (You opened the treasure chest.^1)&* (Inside was \\cY~1\\cW.)/", itemname, "obj_treasure_room_slash_Other_10_gml_65_0");
	msgnext(itemgetstring);
	if (noroom == 0)
	{
		with (obj_event_manager)
			trigger_event((0 << 0), (23 << 0), (939 << 0));
	}
	if (noroom == 0)
		global.flag[itemflag] = 1;
	else
		close = 1;
}
if (extraevent == 1)
{
	if (room == room_dw_cyber_maze_tasque && global.flag[467] == 0)
	{
		checkscreen = instance_create(1200, 520, obj_queenscreen);
		checkscreen.extflag = 4;
		checkscreen.image_index = 10;
		global.flag[467] = 1;
		extraevent = 0;
	}
}
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
