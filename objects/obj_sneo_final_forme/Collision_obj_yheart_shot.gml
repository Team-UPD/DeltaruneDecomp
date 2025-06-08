with (other)
	event_user(0);
with (obj_sneo_final_forme)
	hurtalpha = 1;
if (instance_exists(obj_sneo_final_forme))
{
	if ((obj_sneo_final_forme.destroyable && obj_sneo_final_forme.state == 0) || (obj_sneo_final_forme.state == 1 && obj_sneo_final_forme.formtimer < 30))
	{
	}
	else
	{
		exit;
	}
}
snd_play(snd_damage);
if (instance_exists(obj_sneo_final_forme))
{
	with (obj_sneo_final_forme)
		hurtalpha = 1;
	if (destroyable == 1)
	{
		if (other.big == 0)
		{
			x += 6;
			formtimer += 4;
		}
		else
		{
			pushback = 10;
			formtimer += 10;
		}
	}
}
