if (!i_ex(parent))
{
	instance_destroy();
	exit;
}
if (length < 36)
	length += 2;
x = parent.x + lengthdir_x(length, place);
y = parent.y + lengthdir_y(length, place);
if (hp == 0)
	event_user(1);
