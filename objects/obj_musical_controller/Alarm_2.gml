with (obj_writer)
	instance_destroy();
if (obj_sweet_enemy.hurtstate2 == 1)
{
	if (obj_kk_enemy.hurtstate2 == 1 || obj_hatguy_enemy.hurtstate2 == 1)
		msgsetloc(0, "* (Sweet snapped out of the dance!)/", "obj_musical_controller_slash_Alarm_2_gml_8_0");
	else
		msgsetloc(0, "* (Sweet snapped out of the dance!)/%", "obj_musical_controller_slash_Alarm_2_gml_12_0");
	obj_sweet_enemy.stoppeddancingcounter++;
}
if (obj_kk_enemy.hurtstate2 == 1)
{
	if (obj_hatguy_enemy.hurtstate2 == 1)
		msgsetloc(0, "* (K_K snapped out of the dance!)/", "obj_musical_controller_slash_Alarm_2_gml_20_0");
	else
		msgsetloc(0, "* (K_K snapped out of the dance!)/%", "obj_musical_controller_slash_Alarm_2_gml_24_0");
	obj_sweet_enemy.stoppeddancingcounter++;
}
if (obj_hatguy_enemy.hurtstate2 == 1)
{
	msgsetloc(0, "* (Cap'n snapped out of the dance!)/%", "obj_musical_controller_slash_Alarm_2_gml_30_0");
	obj_sweet_enemy.stoppeddancingcounter++;
}
scr_battletext_default();
d = 1;
