btimer++;
if (btimer > 6)
{
	btimer = 0;
	if (!flip)
	{
		xx = x - (made * 40 * side);
		yy = y;
	}
	else
	{
		xx = x + (made * 40 * side);
		yy = y;
	}
	d = scr_bullet_create(xx, yy, obj_swatchling_shockwave);
	d.damage = obj_swatchling_battle_controller.red_damage;
	d.target = obj_swatchling_battle_controller.red_target;
	d.sizemultiplier = sizemultiplier;
	d.startColor = obj_swatchling_battle_controller.shockwave_color;
	if (flip)
		d.image_angle = 180;
	made++;
}
if (made >= amount)
	instance_destroy();
