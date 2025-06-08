if (!i_ex(actor))
	instance_destroy();
if (i_ex(actor))
{
	x = actor.x;
	y = actor.y;
}
gpu_set_texfilter(true);
draw_sprite_ext(spr_aura_zap, image_index, x, y, dis / 300, image_yscale, dir, image_blend, random(1));
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_aura_zap, image_index * 2, x, y, dis / 300, image_yscale * 2, dir, tint, random(1));
gpu_set_texfilter(false);
gpu_set_blendmode(bm_normal);
