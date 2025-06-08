draw_self();
if (completed == 0)
	lettercolor = c_red;
else
	lettercolor = c_yellow;
var ones = micerequired % 10;
var tens = micerequired div 10;
draw_sprite_ext(spr_teacup_scoreboard_digits, ones, x + 10 + 18, (y - 8) + 68, 2, 2, 0, lettercolor, 1);
draw_sprite_ext(spr_teacup_scoreboard_digits, 10 + tens, x + 10 + 18, (y - 8) + 68, 2, 2, 0, lettercolor, 1);
