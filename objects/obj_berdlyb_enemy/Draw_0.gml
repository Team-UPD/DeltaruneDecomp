if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
fsiner++;
if (instance_exists(o_coaster_berdly) && !instance_exists(obj_berdlyb_spearblaster) && state != 3)
	exit;
if (state == 3)
{
	scr_enemyhurt_tired_after_damage(0.5);
	scr_enemy_drawhurt_generic();
}
