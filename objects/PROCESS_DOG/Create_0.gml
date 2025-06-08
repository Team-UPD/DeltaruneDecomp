visible = 1;
image_xscale = 2;
image_yscale = 2;
x = room_width / 2;
y = room_height / 2;
SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG = snd_init("dogcheck.ogg");
mus_loop_ext(SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG, 1, 0.9 + random(0.1));
image_speed = 0.05;
window_set_caption("DOGTARUNE");
