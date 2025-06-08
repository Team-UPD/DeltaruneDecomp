forcefield = scr_forcefield(680, 1040, 2, 8, 1, 1);
toggle = 0;
hasToggled = 0;
con = 0;
timer = 0;
toggledtimer = 0;
bothToggled = 0;
noellePuzzle = 0;
failurecount = 0;
revengeNoelle = 0;
revengecon = 0;
ignoreHardWork = 0;
weirdRoute = false;
noelleWaitCheck = 0;
fakeStep = 0;
noelleWaiting = 0;
if (global.flag[383] == 1)
{
	con = 9999;
	bothToggled = 1;
	with (forcefield)
		instance_destroy();
	instance_destroy();
}
weird_prompt = false;
myinteract = 0;
