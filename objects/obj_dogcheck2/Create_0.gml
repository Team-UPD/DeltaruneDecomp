timer = 0;
snd_free_all();
global.currentsong[0] = snd_init("alarm_titlescreen.ogg");
global.currentsong[1] = mus_loop(global.currentsong[0]);
maindog = 0;
