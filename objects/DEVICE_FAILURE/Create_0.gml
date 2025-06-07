EVENT = 0;
TIMER = 0;
HEARTMADE = 0;
HSINER = 0;
OBMADE = 0;
global.flag[20] = 0;
global.flag[6] = 1;
global.typer = 667;
scr_windowcaption(scr_84_get_lang_string("DEVICE_FAILURE_slash_Create_0_gml_10_0"));
FADEFACTOR = 0;
WHITEFADE = 0;
FADEUP = 0;
DARK_WAIT = 0;
restart = false;
restart_timer = 0;
gamepad_controls = [gp_face1, gp_face2, gp_face3, gp_face4, gp_shoulderl, gp_shoulderlb, gp_shoulderr, gp_shoulderrb, gp_select, gp_start, gp_stickl, gp_stickr, gp_padu, gp_padd, gp_padl, gp_padr];
with (obj_event_manager)
	trigger_event((0 << 0), (13 << 0));
