draw_self();
if (rouxls == 1)
	draw_sprite_ext(spr_rurus_idle, 0, maxx + 70, maxy - 50, 2, 2, 0, c_white, 1);
if (starwalker == 1)
	draw_sprite(spr_npc_originalstarwalker, 0, camerax(), cameray());
