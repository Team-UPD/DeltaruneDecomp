room_speed = 30;
time = 0;
global.firework_sprite_pixel_data = ds_map_create();
current_sprites[0] = spr_firework_explosion_shape1;
current_sprites[1] = spr_firework_explosion_shape2;
current_sprites[2] = spr_firework_explosion_shape3;
event_user(0);
is_active = false;
if (room == room_dw_cyber_post_music_boss_slide)
	is_active = true;
if (room == room_dw_cyber_maze_fireworks)
	is_active = global.flag[357] == 1;
fireworksprite[0] = spr_firework_explosion_shape1;
fireworksprite[1] = spr_firework_explosion_shape2;
fireworksprite[2] = spr_firework_explosion_shape3;
fireworkcount = 0;
finished = false;
