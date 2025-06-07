if (!trophies_enabled)
	exit;
if (event_cooldown > 0)
	event_cooldown--;
if (os_type == os_ps4 || os_type == os_ps5)
	psn_tick();
