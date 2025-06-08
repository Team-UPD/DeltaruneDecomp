event_inherited();
if (active && y > ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 16))
{
	speed = 0;
	active = 0;
	y = (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 16;
	image_index = 0;
	sprite_index = spr_virovirokun_invaderbullet_impact;
}
var _inst = collision_rectangle(x - 5, y - 3, x + 5, y + 13, obj_omawaroid_policecar, 0, true);
if (_inst != -4)
{
	d = instance_create(other.x, other.y, obj_omawaroid_explosion);
	d.direction = 90;
	d.speed = _inst.speed;
	instance_destroy(_inst);
	instance_destroy();
}
