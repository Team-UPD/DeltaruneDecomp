if (hit_timer > 0 && hit_timer < 20)
	d3d_set_fog(1, c_white, 0, 0);
draw_self();
if (hit_timer > 0 && hit_timer < 20)
	d3d_set_fog(0, c_white, 0, 0);
reticletimer++;
draw_sprite_ext(spr_baseball_reticle, 0, x, y, 2, 2, image_angle * -1, c_white, reticletimer / 7);
