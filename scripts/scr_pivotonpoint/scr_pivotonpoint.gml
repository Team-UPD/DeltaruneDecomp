function scr_pivotonpoint(arg0, arg1, arg2)
{
	var __theta = point_direction(sprite_xoffset, sprite_yoffset, arg0, arg1);
	var __radius = point_distance(sprite_xoffset, sprite_yoffset, arg0, arg1);
	__theta += direction;
	var __xx = x + lengthdir_x(__radius, __theta);
	var __yy = y + lengthdir_y(__radius, __theta);
	scr_rotatearoundpoint(__xx, __yy, arg2);
}
