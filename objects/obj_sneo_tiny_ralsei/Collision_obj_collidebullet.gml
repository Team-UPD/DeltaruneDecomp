if (active == 0)
	exit;
with (other)
	instance_destroy();
if (alarm[0] > 0)
	exit;
if (other.sprite_index == spr_spamtonneo_faceAttack_nose_bullet || other.sprite_index == spr_spamtonneo_faceAttack_wisp || other.sprite_index == spr_bullet_laser_square)
	hp -= 4;
else if (other.sprite_index == spr_bullet_laser_square)
	hp -= 2;
else
	hp -= 10;
alarm[0] = 10;
snd_play(snd_hurt1);
