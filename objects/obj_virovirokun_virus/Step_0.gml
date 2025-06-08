event_inherited();
infecttarget = collision_rectangle(x - 12, y - 12, x + 12, y + 12, obj_omawaroid_vaccine, false, true);
if (infecttarget != -4)
{
	d = instance_create(x, y, obj_animation_dx);
	d.sprite_index = spr_virovirokun_virus_pop;
	d.depth = depth;
	instance_destroy();
	infecttarget.speed = 0;
}
