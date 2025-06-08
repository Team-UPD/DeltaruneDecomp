if (x > (o_boxingcontroller.basex - 120) && x < (o_boxingcontroller.basex + 120) && speedup == 0 && o_boxingqueen.firstwheelattack == 0)
{
	speedup = 2;
	hspeed *= 1.4;
}
if (x > (o_boxingcontroller.basex - 120) && x < (o_boxingcontroller.basex + 120) && playsound == 0 && o_boxingcontroller.wireframe_boxing == 0)
{
	playsound = 1;
	if (o_boxingqueen.wheelsoundtimer < 1)
	{
		if (o_boxingcontroller.wireframe_boxing == 1)
		{
			snd_play(motor_swing_down_bc);
			snd_play(motor_swing_down_bc);
			snd_volume(motor_swing_down_bc, 2, 0);
		}
		else
		{
			snd_play(motor_swing_down);
			snd_play(motor_swing_down);
			snd_volume(motor_swing_down, 2, 0);
		}
	}
	o_boxingqueen.wheelsoundtimer = 7;
}
image_angle += rotspeed;
if (i_ex(wheel_hitbox))
{
	wheel_hitbox.x = x;
	wheel_hitbox.y = y;
}
if (i_ex(wheel_hitbox_graze))
{
	wheel_hitbox_graze.x = x - 15;
	wheel_hitbox_graze.y = y;
}
if (x >= 1000 || x <= -300)
{
	with (wheel_hitbox)
		instance_destroy();
	with (wheel_hitbox_graze)
		instance_destroy();
	instance_destroy();
}
