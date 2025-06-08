con = -1;
var book_pillar = instance_create(640, 265, obj_npc_sign);
book_pillar.sprite_index = spr_castle_book_pillar;
with (book_pillar)
{
	image_xscale = 2;
	image_yscale = 2;
	scr_depth();
}
if (global.plot >= 200 && global.flag[443] == 0)
	con = 0;
else
	instance_destroy();
