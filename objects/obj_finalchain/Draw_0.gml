draw_self();
if (chaincon >= 9999 && type >= 1)
{
	if (instance_exists(spike))
	{
		w = spike.sprite_width;
		h = spike.sprite_height;
		spikecount = floor(w / 11);
		spx = spike.x;
		spy = spike.y;
		balpha = spike.basealpha;
		for (i = 0; i < spikecount; i += 1)
		{
			draw_sprite_ext(spr_bouncebox_spike, 0, (spx - (w / 2)) + 3, (y - (h / 2)) + (i * 11), 1, 1, 0, c_white, balpha);
			draw_sprite_ext(spr_bouncebox_spike, 0, (x + (w / 2)) - (i * 11), (y - (h / 2)) + 3, 1, 1, 270, c_white, balpha);
			draw_sprite_ext(spr_bouncebox_spike, 0, (x - (w / 2)) + (i * 11), (y + (h / 2)) - 2, 1, 1, 90, c_white, balpha);
			draw_sprite_ext(spr_bouncebox_spike, 0, (x + (w / 2)) - 2, (y - (h / 2)) + (i * 11), -1, 1, 0, c_white, balpha);
		}
	}
}
