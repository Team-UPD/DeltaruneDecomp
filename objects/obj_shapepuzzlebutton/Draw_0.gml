draw_self();
draw_sprite_ext(spr_darkbulb_icon_back, 0, x - 1, y - 45, 2, 2, 0, c_white, 1);
gpu_set_blendmode(bm_add);
for (i = 0; i <= active; i++)
	draw_sprite_ext(puzzle_icon, 0, x - 1, y - 45, 2, 2, 0, icon_color, 1 + (i * 0.2));
var _xx = 320 + (((x + 20) - 320) * 1.25);
var _spotlightRotation;
if (obj_shapepuzzle.goalHit)
{
	_spotlightRotation = point_direction(_xx, 26, obj_shapepuzzle.x + (obj_shapepuzzle.sprite_width / 2), obj_shapepuzzle.y + (obj_shapepuzzle.sprite_height / 2)) + 90;
}
else
{
	var pieceCenterLen = point_distance(0, 0, myPiece.sprite_width / 2, myPiece.sprite_height / 2);
	var pieceCenterDir = point_direction(0, 0, myPiece.sprite_width / 2, myPiece.sprite_height / 2);
	var pieceX = myPiece.x + lengthdir_x(pieceCenterLen, pieceCenterDir + myPiece.image_angle);
	var pieceY = myPiece.y + lengthdir_y(pieceCenterLen, pieceCenterDir + myPiece.image_angle);
	_spotlightRotation = point_direction(_xx, 26, pieceX, pieceY) + 90;
}
var _spotlight_color = myPiece.image_blend;
var glowBrightness = myPiece.active ? scr_wave(0, 0.2, 1, 0) : obj_shapepuzzle.finalGlow;
draw_sprite_ext(spr_darkbulb_spotlight, 3, _xx, 26, 1, 1, _spotlightRotation, _spotlight_color, 1);
if (glowBrightness > 0)
	draw_sprite_ext(spr_darkbulb_spotlight, 3, _xx, 26, 1, 1, _spotlightRotation, c_white, glowBrightness);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(spr_darkbulb_spotlight, 0, _xx, 26, 1, 1, _spotlightRotation, c_white, 1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_darkbulb_spotlight, 1, _xx, 26, 1, 1, _spotlightRotation, _spotlight_color, 1);
if (glowBrightness > 0)
	draw_sprite_ext(spr_darkbulb_spotlight, 1, _xx, 26, 1, 1, _spotlightRotation, c_white, glowBrightness);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(spr_darkbulb_spotlight, 2, _xx, 26, 1, 1, 0, c_white, 1);
