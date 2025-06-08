if (sprite_index == spr_sneo_bullet_box)
	exit;
if (destroyable == 1)
{
	if (hitshot.big == 0)
	{
		with (hitshot)
			event_user(0);
	}
	if (red == 1)
	{
		with (obj_sneo_wallbullet_new)
		{
			if (wallnumber == other.wallnumber)
			{
				snd_play_pitch(snd_bomb, 1.1 + random(0.2));
				var _cut = scr_afterimage_cut();
				_cut.flash = true;
				instance_destroy();
			}
		}
		with (obj_sneo_rotatingwall_pipis)
		{
			if (wallnumber == other.wallnumber)
			{
				event_user(0);
				instance_destroy();
			}
		}
	}
	anim = instance_create(x, y, obj_yshot_anim);
	anim.image_xscale = image_xscale;
	anim.image_yscale = image_yscale;
	with (anim)
		sprite_index = spr_yheart_shot_hit3;
}
else
{
	with (hitshot)
		event_user(0);
	snd_play(snd_bell);
}
