image_xscale = 2;
image_yscale = 2;
image_speed = 0.2;
xoff = 35;
yoff = 8;
nxoff = 35;
nyoff = 6;
afactor = sin(siner / 24);
siner++;
if (afactor < -0.2 && siner >= 8)
	siner--;
if (global.fighting == 0)
	instance_destroy();
if (!surface_exists(orbsurface))
	orbsurface = surface_create(120, 136);
surface_set_target(orbsurface);
draw_clear(c_black);
draw_sprite_ext(spr_noelleb_orb, 0, nxoff - xoff, nyoff - yoff, 2, 2, 0, c_white, 0.6 * afactor);
snowangle = -20 + (siner / 2);
snowoff = siner / 2;
draw_sprite_ext(spr_noelleb_orb, 2, (nxoff - xoff) + snowoff, (nyoff - yoff) + (siner / 2), 2, 2, snowangle, c_white, 0.5 * afactor);
draw_sprite_ext(spr_noelleb_orb, 2, nxoff - xoff - snowoff, nyoff - yoff - (siner / 2), 2, 2, -snowangle, c_white, 0.5 * afactor);
draw_sprite_ext(sprite_index, image_index, nxoff, nyoff, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(spr_noelleb_orb, 1, nxoff - xoff, nyoff - yoff, 2, 2, 0, c_blue, 0.2 * afactor);
draw_set_blend_mode(bm_add);
draw_sprite_ext(spr_noelleb_orb, 1, nxoff - xoff, nyoff - yoff, 2, 2, 0, c_blue, 0.6 * afactor);
draw_set_blend_mode(bm_normal);
draw_set_blend_mode(bm_subtract);
draw_sprite_ext(spr_noelleb_orb, 3, nxoff - xoff, nyoff - yoff, 2, 2, 0, c_white, 1);
draw_set_blend_mode(bm_normal);
surface_reset_target();
draw_surface(orbsurface, x - nxoff, y - nyoff);
