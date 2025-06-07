skipme = 0;
textsound = snd_text;
charline = 33;
originalcharline = charline;
hspace = 8;
vspace = 18;
rate = 1;
mycolor = c_white;
myfont = scr_84_get_font("main");
shake = 0;
special = 0;
skippable = 1;
automash_timer = 0;
if (global.flag[6] == 1)
	skippable = 0;
f = 1;
if (global.darkzone == 1)
	f = 2;
scr_texttype();
autoaster = 1;
pos = 2;
lineno = 0;
aster = 0;
halt = 0;
xcolor = c_black;
wxskip = 0;
msgno = 0;
first_alarm = 0;
firstnoise = 0;
noiseskip = 0;
formatted = 0;
colorchange = 0;
fontchange = 0;
sound_played = 0;
writingx = x;
writingy = y;
dialoguer = 0;
smallface = 505050;
faced = 0;
facedever = 0;
facer = 0;
siner = 0;
specfade = 1;
for (i = 0; i < 7; i += 1)
{
	specx[i] = i * 6;
	specy[i] = i * 6;
}
mystring = global.msg[0];
for (j = 0; j < 100; j += 1)
	nstring[j] = global.msg[j];
length = string_length(mystring);
alarm[0] = rate;
if (rate < 3)
	alarm[2] = 1;
else
	scr_textsound();
