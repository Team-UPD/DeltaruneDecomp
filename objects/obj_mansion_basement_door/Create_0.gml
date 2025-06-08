myinteract = 0;
image_speed = 0;
depth = 800000;
con = 0;
closed_door = global.flag[373];
layer_set_visible("TILES_Door_Closed", closed_door);
if (closed_door)
{
	collider = instance_create(240, 280, obj_solidblocksized);
	collider.image_xscale = 2;
	interactable = instance_create(240, 280, obj_readable_room1);
	interactable.image_xscale = 4;
	interactable.image_yscale = 2;
}
else
{
	instance_destroy();
}
