if (active == false && (x != mouse_x || y != mouse_y))
{
	active = true;
	if (!useSprite)
		cursor_sprite = spr_poppup_mouse;
}
