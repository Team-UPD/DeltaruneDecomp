if (!instance_exists(obj_shrinktangle))
{
	instance_destroy();
	exit;
}
left = lerp(x, obj_shrinktangle.left, glerp);
right = lerp(x, obj_shrinktangle.right, glerp);
top = lerp(y, obj_shrinktangle.top, glerp);
bottom = lerp(y, obj_shrinktangle.bottom, glerp);
glerp += 0.1;
var colo = draw_get_color();
draw_set_colour(#00C000);
draw_set_alpha(0.25);
for (i = 0; i < size; i++)
	draw_rectangle((left - size) + i, (top - size) + i, (right + size) - i, (bottom + size) - i, 1);
draw_set_alpha(1);
draw_set_colour(colo);
if (glerp >= 1)
	instance_destroy();
