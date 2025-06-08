if (!recording)
	exit;
if (global.turntimer <= 0)
{
	recording = false;
	addIndex = 0;
	exit;
}
xpos[addIndex] = obj_heart.x;
ypos[addIndex] = obj_heart.y;
addIndex++;
