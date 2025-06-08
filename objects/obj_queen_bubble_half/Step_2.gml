if (!i_ex(parent))
{
	instance_destroy();
	exit;
}
image_xscale = parent.image_xscale;
image_yscale = parent.image_yscale;
image_angle = parent.image_angle;
x = parent.x;
y = parent.y;
if (!override_sprite)
	sprite_index = parent.sprite_index;
image_index = parent.image_index;
image_blend = parent.image_blend;
