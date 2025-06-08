if (global.turntimer < 1)
	instance_destroy();
if (timer == 0 && i_ex(obj_sneo_wall_controller_new))
	x += obj_sneo_wall_controller_new.wallspeed[wallnumber];
if (timer > 0)
	timer++;
if (timer == 6)
{
	snd_play(snd_bomb);
	snd_stop(bomsfallsfx);
	sprite_index = spr_mettaton_bomb2;
	image_index = 0;
	instance_create(x, y, obj_shake);
	hitbox1 = instance_create(x, y, obj_mettaton_bomb_hitbox);
	hitbox1.image_xscale = 500;
	hitbox1.image_yscale = 0.5;
	hitbox2 = instance_create(x, y, obj_mettaton_bomb_hitbox);
	hitbox2.image_xscale = 0.2;
	hitbox2.image_yscale = 500;
}
if (timer == 12)
	instance_destroy();
