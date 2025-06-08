if (other.object_index == obj_queen_social_media && other.handle == 1)
{
	exit;
}
else if (irandom(9) == 9)
{
	other.sprite_index = spr_queen_handle;
	other.image_blend = c_teal;
	other.handle = 1;
}
else
{
	instance_destroy(other);
}
