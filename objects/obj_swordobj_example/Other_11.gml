anim = instance_create(x + 15, y + 15, obj_animation);
snd_play(snd_badexplosion);
anim.sprite_index = spr_realisticexplosion;
instance_destroy();
