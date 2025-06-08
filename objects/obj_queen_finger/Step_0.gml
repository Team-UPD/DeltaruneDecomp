timer--;
xx = obj_growtangle.x + 80;
if (state == 0)
{
	scrollPrep = true;
	timer = 0;
	image_blend = c_gray;
}
if (state == 1)
{
	x = lerp(xx, xstart, scr_ease_inout(timer / 50, 3));
	y = lerp(yy, ystart, scr_ease_inout(timer / 50, -1));
}
else if (state == 2)
{
	y = lerp(yy, ystop, scr_ease_inout(timer / 15, 3));
}
else if (state == 3)
{
	y += scrollSpeed;
	ystop = y;
	if (scrollSpeed <= 5)
		timer = 0;
}
if (state >= 3 && state != 6)
{
	if (trueScrollSpeed > 10)
		trueScrollSpeed -= 0.5;
	else
		trueScrollSpeed -= 0.2;
	scrollSpeed = clamp(trueScrollSpeed, 4, 20);
}
if (state == 5)
	y = lerp(yy - 6, ystop, scr_ease_inout(timer / 15, 3));
if (state == 6)
{
	var lerpvalue = scr_ease_in(timer / 20, 5);
	y = lerp(yy - 6, yy, lerpvalue);
	scrollSpeed = -lerpvalue * 4;
}
else if (state == 7)
{
	y = lerp(yy + 130, yy - 6, scr_ease_in(timer / 20, 5));
}
else if (state == 8)
{
	if (scrollSpeed <= 5)
		timer = 0;
}
if (timer <= 0)
{
	switch (state)
	{
		case 0:
			timer = 50;
			break;
		case 1:
			scrollSpeed = 8;
			trueScrollSpeed = 8;
			timer = 1000;
			image_blend = c_white;
		case 2:
			scrollSpeed = 8;
			trueScrollSpeed = 8;
			timer = 1000;
			if (bigscrollcount == 0)
			{
				scrollPrep = true;
				bigscrollcount = irandom(1) + 1;
			}
			else
			{
				bigscrollcount--;
				scrollPrep = false;
			}
			image_blend = c_white;
			break;
		case 3:
			if (!scrollPrep)
				timer = 15;
			image_blend = c_gray;
			break;
		case 4:
			timer = 15;
			image_blend = c_white;
			break;
		case 5:
			scrollSpeed = 1;
			timer = 20;
			break;
		case 6:
			trueScrollSpeed = 25;
			timer = 20;
			break;
		case 7:
			scrollPrep = false;
			timer = 1000;
			break;
	}
	if (state == 1)
		state++;
	if (state == 3 && !scrollPrep)
		state = 2;
	else if (state == 8)
		state = 3;
	else
		state++;
}
