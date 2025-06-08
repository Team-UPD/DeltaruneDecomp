snd_stop(snd_hurt1);
snd_play(snd_hurt1);
snd_stop(snd_punchweak);
snd_play(snd_punchweak);
doghit = instance_create(x, y + 40, obj_animation);
doghit.image_xscale = 2;
doghit.image_yscale = 2;
doghit.sprite_index = spr_dogcar_hit;
doghit.depth = -300;
x += 36;
obj_dogcar_gameover.image_xscale -= 0.08;
if (obj_dogcar_gameover.image_xscale <= 0.08)
{
	with (obj_dogcar_gameover)
		instance_destroy();
}
