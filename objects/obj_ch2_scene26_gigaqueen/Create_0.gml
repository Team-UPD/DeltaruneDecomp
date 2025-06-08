damaged = global.plot >= 170;
damagedfx = damaged;
head_sprite = damaged ? spr_cutscene_27_queen_damaged : spr_cutscene_26_queen_giga_head;
head_index = 0;
head_x_pos = damaged ? ((camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_26_queen_giga_head)) : -1;
head_y_pos = damaged ? (cameray() - 15) : -1;
head_shake_x = 0;
head_shake_y = 0;
smoketimer = 0;
shaketimer = 0;
climb = 0;
climbtimer = 0;
rem_head_x_pos = head_x_pos;
rem_head_y_pos = head_y_pos;
static_happened = 0;
if (room == room_dw_mansion_top)
{
	if (scr_sideb_get_phase() < 2)
		head_y_pos = cameray() + view_hport[0] + 100;
	else
		head_y_pos = -1;
}
pilot_sprite = spr_cutscene_26_queen_pilot_laugh;
pilot_index = 0;
pilot_alpha = 1;
laugh = false;
animsiner = 0;
goggles_index = 0;
highlight_index = 0;
release = false;
release_fast = false;
head_init = false;
set_pos = false;
anim_index = 0;
surprised = false;
leave = false;
leave_fast = false;
unhappy = false;
static_start = false;
static_stop = false;
