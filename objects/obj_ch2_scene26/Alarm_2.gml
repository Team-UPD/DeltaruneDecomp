var explosion_a = instance_create(1780 - (20 * explosions), 220 + (15 * explosions), obj_animation_dx);
explosion_a.sprite_index = spr_explosion_round;
explosion_a.image_xscale = 2;
explosion_a.image_yscale = 2;
explosion_a.image_speed = 0.75;
explosion_a.depth = 890000;
var explosion_b = instance_create(1780 + (20 * explosions), 220 + (15 * explosions), obj_animation_dx);
explosion_b.sprite_index = spr_explosion_round;
explosion_b.image_xscale = 2;
explosion_b.image_yscale = 2;
explosion_b.image_speed = 0.75;
explosion_b.depth = 890000;
explosions++;
if (explosions < 3)
	alarm[2] = 3;
