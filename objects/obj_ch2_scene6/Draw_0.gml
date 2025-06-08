if (lancerGlow == 1)
{
	morphTime++;
	glowValue = clamp(glowValue + 0.05, 0, 1);
	draw_sprite_ext_flash(la_actor.sprite_index, la_actor.image_index, la_actor.x, la_actor.y, la_actor.image_xscale, la_actor.image_yscale, la_actor.image_angle, la_actor.image_blend, glowValue);
	if (morphTime >= 20)
	{
		shrinkValue = clamp(shrinkValue - 0.025, 0, 1);
		la_actor.x = origX + (halfWidth * (1 - shrinkValue));
		la_actor.y = origY + (halfHeight * (1 - shrinkValue));
		la_actor.image_yscale = shrinkValue * 2;
		la_actor.image_xscale = shrinkValue * 2;
	}
	if (morphTime >= 35 && cardMade == 0)
	{
		la_card.x = la_actor.x + (halfWidth * 0.6);
		la_card.y = la_actor.y + (halfHeight * 0.6);
		cardMade = 1;
	}
	if (morphTime >= 35 && cardMade == 1)
	{
		growValue = clamp(growValue + 0.025, 0, 1);
		la_card.image_speed = 1.25 - growValue;
		la_card.image_yscale = growValue * 2;
		la_card.image_xscale = growValue * 2;
		draw_sprite_ext_flash(la_card.sprite_index, la_card.image_index, la_card.x, la_card.y, la_card.image_xscale, la_card.image_yscale, la_card.image_angle, la_card.image_blend, 1);
	}
}
if (lancerGlow == 2)
{
	morphTime++;
	glowValue = clamp(glowValue - 0.05, 0, 1);
	draw_sprite_ext_flash(la_card.sprite_index, la_card.image_index, la_card.x, la_card.y, la_card.image_xscale, la_card.image_yscale, la_card.image_angle, la_card.image_blend, glowValue);
	if (morphTime >= 50)
		lancerCard = 1;
}
if (lancerGlow == 4)
{
	morphTime++;
	glowValue = clamp(glowValue + 0.1, 0, 1);
	draw_sprite_ext_flash(ro_actor.sprite_index, ro_actor.image_index, ro_actor.x, ro_actor.y, ro_actor.image_xscale, ro_actor.image_yscale, ro_actor.image_angle, ro_actor.image_blend, glowValue);
	if (morphTime >= 15)
	{
		shrinkValue = clamp(shrinkValue - 0.05, 0, 1);
		ro_actor.x = origX + (halfWidth * (1 - shrinkValue));
		ro_actor.y = origY + (halfHeight * (1 - shrinkValue));
		ro_actor.image_yscale = shrinkValue * 2;
		ro_actor.image_xscale = shrinkValue * 2;
	}
	if (morphTime >= 25 && cardMade == 0)
	{
		ro_card.x = ro_actor.x + (halfWidth * 0.45);
		ro_card.y = ro_actor.y + (halfHeight * 0.5);
		ro_card.image_index = 5;
		cardMade = 1;
	}
	if (morphTime >= 25 && cardMade == 1)
	{
		growValue = clamp(growValue + 0.05, 0, 1);
		ro_card.image_speed = 1.25 - growValue;
		ro_card.image_yscale = growValue * 2;
		ro_card.image_xscale = growValue * 2;
		draw_sprite_ext_flash(ro_card.sprite_index, ro_card.image_index, ro_card.x, ro_card.y, ro_card.image_xscale, ro_card.image_yscale, ro_card.image_angle, ro_card.image_blend, 1);
	}
}
if (lancerGlow == 5)
{
	morphTime++;
	glowValue = clamp(glowValue - 0.2, 0, 1);
	draw_sprite_ext_flash(ro_card.sprite_index, ro_card.image_index, ro_card.x, ro_card.y, ro_card.image_xscale, ro_card.image_yscale, ro_card.image_angle, ro_card.image_blend, glowValue);
	if (morphTime >= 5)
		rouxlsCard = 1;
}
