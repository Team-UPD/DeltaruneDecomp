anim = instance_create(x, y, obj_yshot_anim);
anim.image_xscale = image_xscale * 2;
anim.image_yscale = image_yscale * 2;
with (anim)
	sprite_index = spr_yheart_shot_hit3;
instance_destroy();
