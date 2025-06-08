image_xscale = 2;
image_yscale = 2;
image_speed = 0;
image_index = 0;
bumped = 0;
drawthrash = 0;
con = 0;
timer = 0;
fallnow = 0;
boatx = 90;
boaty = 60;
depth = 830000;
if (instance_number(object_index) == 1)
{
	boatfront = instance_create(x + boatx, y + boaty, object_index);
	with (object_index)
	{
		image_xscale = 2;
		image_yscale = 2;
		image_speed = 0;
		isrouxls = 0;
	}
	isrouxls = 1;
	boatfront.depth = depth - 50;
	boatfront.image_index = 1;
	boatfront.con = 5;
}
