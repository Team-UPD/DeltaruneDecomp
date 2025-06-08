timer -= 1;
if (timer <= 0)
{
	instance_destroy();
	if (kick == 1 && o_boxingcontroller.wireframe_boxing == 1 && has_tutorial_kick_hit_player == 0 && o_boxingcontroller.succeeded_kick_tutorial == 0)
	{
		o_boxingcontroller.failed_kick_tutorial_counter = 1;
		o_boxingcontroller.succeeded_kick_tutorial = 1;
	}
}
image_blend = c_red;
if (hit_dodging == 1)
	image_blend = c_green;
if (hit_ducking == 0)
	image_blend = c_aqua;
if (hit_jumping == 0)
	image_blend = c_yellow;
if (graze_only == 1)
	image_blend = c_gray;
