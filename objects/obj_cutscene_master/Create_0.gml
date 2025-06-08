waiting = 0;
cs_wait_timer = 0;
cs_wait_amount = 0;
cs_wait_dialogue = 0;
cs_wait_custom = 0;
cs_wait_box = -1;
mydialoguer = 438438943;
kill_actors = 0;
loadedState = 0;
instant = 0;
breakme = 0;
current_command = 0;
maximum_command = 1;
master_object = 9999999;
msgside = -1;
zurasu = 0;
mysound = -1;
initialized = 0;
actor_selected = "noone";
actor_selected_id = 99999999;
for (i = 0; i < 20; i++)
{
	actor_id[i] = 99999999;
	actor_name[i] = "noone";
}
for (i = 0; i < 10; i++)
	save_object[i] = 99999999;
scr_cutscene_master_commands_initialize();
terminate_this_frame = 0;
