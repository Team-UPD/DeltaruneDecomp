if (global.turntimer < 2)
	instance_destroy();
x = xstart + lengthdir_x(length, place);
y = ystart + lengthdir_y(length, place);
var a = 1;
if (first == 1)
	a = 3;
repeat (a)
{
	place += 10;
	place2 += 10;
	length -= 2;
}
if (length <= 0)
{
	instance_destroy();
	d = instance_create(x, y, obj_queen_explodinghead);
	d.buffer = bufferattack;
	d.damage = damage;
	d.target = target;
	d.ultimate = ultimate;
	d.laugh = 1;
}
