myinteract = 1;
global.interact = 1;
headobj = instance_create(0, 0, obj_kris_headobj);
headobj.sprite_index = sprite_index;
headobj.visible = 0;
depth = obj_mainchara.depth - 4;
headobj.image_xscale = image_xscale;
headobj.image_yscale = image_yscale;
