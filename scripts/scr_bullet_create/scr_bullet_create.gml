function scr_bullet_create(arg0, arg1, arg2)
{
	var __newbullet = instance_create(arg0, arg1, arg2);
	__newbullet.damage = damage;
	__newbullet.target = target;
	if (variable_instance_exists(self, "element"))
		__newbullet.element = element;
	return __newbullet;
}
