image_index = 1;
image_blend = c_yellow;
image_alpha = 0.5;
image_xscale = 0.4;
image_yscale = 0.4;
target = obj_spamton_neo_enemy;
var dist = 9999;
if (instance_exists(obj_pipis_bullet))
{
	if (distance_to_object(instance_nearest(x, y, obj_pipis_bullet)) < dist)
		target = instance_nearest(x, y, obj_pipis_bullet);
}
if (instance_exists(obj_pipis_egg_bullet))
{
	if (distance_to_object(instance_nearest(x, y, obj_pipis_egg_bullet)) < dist)
		target = instance_nearest(x, y, obj_pipis_egg_bullet);
}
if (instance_exists(obj_sneo_heartattack))
{
	if (distance_to_object(instance_nearest(x, y, obj_sneo_heartattack)) < dist)
		target = instance_nearest(x, y, obj_sneo_heartattack);
}
if (instance_exists(obj_sneo_heatattack_bullet))
{
	if (distance_to_object(instance_nearest(x, y, obj_sneo_heatattack_bullet)) < dist)
		target = instance_nearest(x, y, obj_sneo_heatattack_bullet);
}
if (instance_exists(obj_sneo_lilguy))
{
	if (distance_to_object(instance_nearest(x, y, obj_sneo_lilguy)) < dist)
		target = instance_nearest(x, y, obj_sneo_lilguy);
}
if (instance_exists(obj_sneo_lilguy_bullet))
{
	if (distance_to_object(instance_nearest(x, y, obj_sneo_lilguy_bullet)) < dist)
		target = instance_nearest(x, y, obj_sneo_lilguy_bullet);
}
if (instance_exists(obj_sneo_wireheart))
{
	if (distance_to_object(instance_nearest(x, y, obj_sneo_wireheart)) < dist)
		target = instance_nearest(x, y, obj_sneo_wireheart);
}
if (instance_exists(obj_sneo_faceattack_target))
{
	if (distance_to_object(instance_nearest(x, y, obj_sneo_faceattack_target)) < dist)
		target = instance_nearest(x, y, obj_sneo_faceattack_target);
}
if (instance_exists(obj_regularbullet))
{
	if (distance_to_object(instance_nearest(x, y, obj_regularbullet)) < dist)
		target = instance_nearest(x, y, obj_regularbullet);
}
