function scr_camerareset(arg0)
{
	camreset = instance_create(x, y, obj_camera_resetter);
	camreset.timertarg = arg0;
}
