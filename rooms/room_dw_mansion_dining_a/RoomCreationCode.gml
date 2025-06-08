if (global.flag[356] == 1)
{
	plate = instance_create(1004, 294, obj_soliddark);
	plate.visible = true;
	plate.image_xscale = 2;
	plate.image_yscale = 2;
	plate.sprite_index = spr_plate;
	with (plate)
		scr_depth();
	interactablelancer = instance_create(1036, 258, obj_npc_room);
	interactablelancer.sprite_index = spr_cutscene_20_lancer_stone_bib;
	interactablelancer.image_speed = 0;
	interactablelancer.image_index = 0;
	interactablelancer.image_xscale = 2;
	interactablelancer.image_yscale = 2;
}
