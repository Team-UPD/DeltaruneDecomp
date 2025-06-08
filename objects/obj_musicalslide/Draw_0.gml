var _camY = cameray();
for (var _lane = 0; _lane < (lanesCount + 1); _lane++)
{
	var _laneX = lanesX + (_lane * lanesWidth);
	if (_lane % 2)
		draw_sprite_stretched_ext(spr_pixel, 0, _laneX, -10, lanesWidth, room_height + 20, c_black, lanesFadein * 0.2);
	if (_lane > 0 && _lane < 4)
		draw_sprite_stretched_ext(spr_pixel, 0, _laneX, -10, 2, room_height + 20, c_gray, lanesFadein);
}
var _laneEnd = ease_out_quart(lanesEndFadein, 0, 100, 1);
_laneEnd = (_camY + lanesEndY + 100) - _laneEnd;
draw_sprite_stretched_ext(spr_pixel, 0, 0, _laneEnd, room_width, 4, c_gray, lanesFadein);
draw_set_alpha(1);
