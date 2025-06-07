draw_self();
if (fadein < 10)
	fadein += 1;
draw_set_alpha(fadein / 10);
draw_set_color(c_white);
draw_rectangle(lx, ux, rx, dx, true);
draw_rectangle(lx + 1, ux + 1, rx - 1, dx - 1, true);
draw_set_alpha(1);
w = sprite_width;
h = sprite_height;
spikecount = floor(w / 11);
for (i = 0; i < spikecount; i += 1)
{
	draw_sprite_ext(spr_bouncebox_spike, 0, (x - (w / 2)) + 3, (y - (h / 2)) + (i * 11), 1, 1, 0, c_white, fadein / 10);
	draw_sprite_ext(spr_bouncebox_spike, 0, (x + (w / 2)) - (i * 11), (y - (h / 2)) + 3, 1, 1, 270, c_white, fadein / 10);
	draw_sprite_ext(spr_bouncebox_spike, 0, (x - (w / 2)) + (i * 11), (y + (h / 2)) - 2, 1, 1, 90, c_white, fadein / 10);
	draw_sprite_ext(spr_bouncebox_spike, 0, (x + (w / 2)) - 2, (y - (h / 2)) + (i * 11), -1, 1, 0, c_white, fadein / 10);
}
