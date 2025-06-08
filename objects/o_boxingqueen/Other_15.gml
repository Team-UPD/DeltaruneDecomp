flash = instance_create(x, y, o_afterimage);
flash.sprite_index = sprite_index;
flash.image_index = image_index;
flash.image_xscale = image_xscale;
flash.image_yscale = image_yscale;
if (drawflip == 1)
	flash.image_xscale *= -1;
flash.image_blend = image_blend;
flash.image_speed = 0;
flash.depth = depth - 1;
flash.boss = id;
