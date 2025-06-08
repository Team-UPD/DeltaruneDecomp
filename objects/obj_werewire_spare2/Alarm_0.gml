x -= 41;
y -= 35;
sprite_index = spr_plugboy_spare;
spareanim = instance_create(x, y, obj_spareanim);
spareanim.sprite_index = sprite_index;
spareanim.image_index = image_index;
spareanim.image_xscale = image_xscale;
spareanim.image_yscale = image_yscale;
instance_destroy();
