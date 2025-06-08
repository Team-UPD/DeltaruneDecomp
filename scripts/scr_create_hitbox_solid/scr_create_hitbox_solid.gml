function scr_create_hitbox_solid()
{
	var _hitboxwidth = bbox_right - bbox_left;
	var _hitboxheight = bbox_bottom - bbox_top;
	___createdsolid = instance_create(bbox_left, bbox_top, obj_soliddark);
	___createdsolid.image_xscale = 0.025 * _hitboxwidth;
	___createdsolid.image_yscale = 0.025 * _hitboxheight;
	return ___createdsolid;
}
