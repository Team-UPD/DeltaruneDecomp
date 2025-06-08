if (instance_exists(obj_mainchara))
{
	if (follow == 1 && obj_mainchara.visible == true)
	{
		depth = obj_mainchara.depth - 4;
		x = obj_mainchara.x + (obj_mainchara.sprite_width / 2);
		y = (obj_mainchara.y - 6) + yoffset;
	}
}
else
{
	instance_destroy();
}
