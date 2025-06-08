if (mousecreate == 1)
	doorstate = 0;
if (mousecreate == 0)
	doorstate = 1;
if (image_index <= 1)
	gentimer -= 1;
if (gentimer <= 0)
	mousecreate = 0;
if ((gentimer % 5) == 1 && mousecreate == 1 && closed == 0)
	instance_create(x, y, obj_holemouse);
if (doorstate == 0)
	desIndex -= 1;
if (doorstate == 1)
	desIndex += 1;
desIndex = clamp(desIndex, 0, 5);
image_index = desIndex;
