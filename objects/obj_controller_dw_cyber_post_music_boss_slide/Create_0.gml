con = 0;
sweet = 0;
block = 0;
nisekk = 0;
djtable = 0;
nisehatguy = 0;
ralsei = 0;
susie = 0;
watch = 0;
blockinit = 0;
ralwatch = 0;
realsus = 0;
realral = 0;
blocklock = 0;
plx = room_width;
susx = room_width;
if (global.flag[7] == 1)
	global.flag[7] = 0;
if (charaX() < 640)
{
	stopblock = instance_create(520, 2600, obj_solidblocksized);
	stopblock.visible = false;
}
