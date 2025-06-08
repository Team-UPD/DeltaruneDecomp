scr_enemy_object_init();
talkmax = 300;
image_speed = 0.16666666666666666;
idlesprite = spr_swatchling_body;
hurtsprite = spr_swatchling_hurt;
sparedsprite = spr_swatchling_spared;
randomMessage = 0;
blue = 1;
green = 2;
yellow = 3;
orange = 4;
red = 5;
currentcolor = red;
previouscolor = red;
current_pal = red;
sprite_palette = spr_swatchling_palette;
color_init = false;
new_color = 0;
loaded_color = false;
timer = 0;
setmessage = false;
coordinated = false;
becameAlone = 0;
base_colors[0] = red;
base_colors[1] = blue;
base_colors[2] = yellow;
switch (global.flag[426])
{
	case -1:
		base_colors[0] = red;
		base_colors[1] = red;
		base_colors[2] = blue;
		break;
	case 0:
		base_colors[0] = red;
		base_colors[1] = orange;
		base_colors[2] = blue;
		break;
	case 1:
		base_colors[0] = blue;
		base_colors[1] = green;
		base_colors[2] = yellow;
		break;
	case 2:
		base_colors[0] = red;
		base_colors[1] = orange;
		base_colors[2] = yellow;
		break;
	case 3:
		base_colors[0] = blue;
		base_colors[1] = yellow;
		base_colors[2] = red;
		break;
	case 4:
		base_colors[0] = red;
		base_colors[1] = blue;
		base_colors[2] = yellow;
		break;
	case 5:
		base_colors[0] = blue;
		base_colors[1] = yellow;
		base_colors[2] = green;
		break;
	case 6:
		base_colors[0] = red;
		base_colors[1] = yellow;
		base_colors[2] = blue;
		break;
	case 7:
		base_colors[0] = blue;
		base_colors[1] = red;
		base_colors[2] = yellow;
		break;
	case 8:
		base_colors[0] = yellow;
		base_colors[1] = green;
		base_colors[2] = orange;
		break;
}
