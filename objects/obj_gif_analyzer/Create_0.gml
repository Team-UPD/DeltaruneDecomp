init = 0;
found_gif = 0;
mygif = -1;
image_speed = 0;
timer = 0;
if (file_exists("game.gif"))
	mygif = sprite_add("game.gif", 0, 0, 0, 0, 0);
