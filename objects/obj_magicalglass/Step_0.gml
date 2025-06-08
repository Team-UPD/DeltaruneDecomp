if (place_meeting(x, y, obj_caterpillarchara))
	image_alpha = 1;
else
	image_alpha = lerp(image_alpha, 0, 0.125);
