event_inherited();
con = 0;
closetimer = 0;
image_yscale = 2;
blue = 1;
green = 2;
yellow = 3;
orange = 4;
red = 5;
current_pal = red;
if (swatch_color != "")
{
	switch (swatch_color)
	{
		case "blue":
			current_pal = blue;
			break;
		case "green":
			current_pal = green;
			break;
		case "yellow":
			current_pal = yellow;
			break;
		case "orange":
			current_pal = orange;
			break;
		case "red":
			current_pal = red;
			break;
	}
}
sprite_palette = spr_swatchling_palette;
color_init = false;
new_color = 0;
base_colors[0] = blue;
base_colors[1] = red;
base_colors[2] = yellow;
