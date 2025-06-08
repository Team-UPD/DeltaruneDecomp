timer++;
if (x < (camerax() + 640))
	sink = true;
if (sink == true)
{
	if ((timer % 4) == 0)
		progress += 1;
}
xx = x + (sin(timer / 12) * 6);
yy = y + (sin(timer / 7) * 4);
draw_sprite_part_ext(spr_queenstatue_acid, 0, 0, 0, sprite_width, (sprite_height / 2) - progress, xx, yy + (progress * 2), 2, 2, c_white, 1);
bubbleindex += 0.25;
if (progress > 70)
	bubblealpha *= 0.8;
draw_sprite_ext(spr_mansion_hands_bubbles, bubbleindex, x - 14, y + 118, 2, 2, 0, c_white, bubblealpha);
if (bubblealpha < 0.01)
	instance_destroy();
global.flag[429] = progress;
