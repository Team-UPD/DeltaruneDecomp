jumpsiner += 1;
if (image_alpha < 1 && active == 0)
	image_alpha += 0.1;
else
	active = 1;
bottomy = (obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 20;
jsine = sin(jumpsiner / jumpspeed) * jumpheight;
y = (bottomy + jsine) - jumpheight;
image_speed = 0;
image_index = 1;
if (jsine > 0)
	image_index = 2;
if (jsine > (jumpheight / 2))
	image_index = 0;
if (x <= (obj_battlesolid.x - (obj_battlesolid.sprite_width / 2) - 40))
	image_alpha -= 0.1;
