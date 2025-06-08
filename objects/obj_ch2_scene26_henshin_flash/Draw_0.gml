siner++;
orb_sin = sin(siner) * 2;
var _duration = 75;
if (siner <= _duration)
{
	beam_size = lerp(2, 20, scr_ease_out(siner / _duration, 5));
	beam_speed = lerp(0, 550, scr_ease_out(siner / _duration, 4));
	orb_size = lerp(0, 60, scr_ease_out(siner / _duration, 5));
}
else
{
	orb_size += 0.5;
}
for (i = 0; i < 4; i++)
{
	var _beam_final_dir = beam_dir[i] + (beam_rot[i] * beam_speed);
	scr_draw_beam(x, y, 600, beam_size, _beam_final_dir, 16777215, 1, 0);
}
draw_circle(x, y, orb_size + orb_sin, 0);
