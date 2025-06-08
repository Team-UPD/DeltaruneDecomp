with (obj_ch2_keyboardpuzzle_tile)
{
	pressed = 1;
	pressable = 0;
}
global.facing = 0;
snd_play(snd_locker);
instance_create(0, 0, obj_shake);
