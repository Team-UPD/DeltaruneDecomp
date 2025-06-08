extflag = "roulsBlock";
sprite_index = spr_npc_block;
image_xscale = 2;
image_yscale = 2;
visible = true;
scr_depth();
if (global.plot < 72)
	instance_destroy();
